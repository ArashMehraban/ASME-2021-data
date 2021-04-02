import os
import sys
import pandas as pd
import numpy as np
##from collections import OrderedDict
##import matplotlib.pyplot as plt
##from mpl_toolkits.mplot3d import Axes3D
##from matplotlib.lines import Line2D

class AppCtx:
    pass

def parse_file_content(filename, appCtx):
    pass

def parse_filename(filename, appCtx):
    pass

def parse_log_files(folder_name, appCtx):
    #accumulate all filenames & drop the extension
    filenames=[]
    ext_sz = len(appCtx.filename_ext)
    for f in os.listdir(folder_name):
        if f[-ext_sz:] == appCtx.filename_ext:
            filenames.append(f)

    filenames_data = []
    if(appCtx.parse_filename):
        #extract data from filenames
        parse_filename = appCtx.parse_filename #function pointer
        for filename in filenames:
            filenames_data.append(parse_filename(filename,appCtx))
    
    #change directory to where log files are
    os.chdir(os.path.join(os.getcwd(),folder_name))

    #extract data from file contents
    files_data = []
    if(appCtx.parse_file_content):
        parse_file_content = appCtx.parse_file_content #function pointer
        for filename in filenames:
            files_data.append(parse_file_content(filename, appCtx)) 

    #change durectory back to where you were
    os.chdir("..")

    #return as numpy array
    return np.array(filenames_data), np.array(files_data)

def parse_filename_NH_noether(filename,appCtx):
    ext_sz = len(appCtx.filename_ext)
    f = filename[:-ext_sz].split('_')
    data = []
    problemName = {'FSInitial-NH1':1,'FSInitial-NH2':2,'FSCurrent-NH1':3, 'FSCurrent-NH2':4}
    if f[1] == 'FSInitial-NH1':
        data.append(problemName['FSInitial-NH1'])
    if f[1] == 'FSInitial-NH2':
        data.append(problemName['FSInitial-NH2'])
    if f[1] == 'FSCurrent-NH1':
        data.append(problemName['FSCurrent-NH1'])
    if f[1] == 'FSCurrent-NH2':
        data.append(problemName['FSCurrent-NH2'])        
    for i in range(len(f)):
        if i in appCtx.keep_idx:
            if f[i].isdigit() or f[i].replace('.', '', 1).isdigit():
                data.append(digitize(f[i]))
    return data

def parse_file_content_NH_noether(filename, appCtx):
    grep = appCtx.logfile_keywords
    file_data = []
    fd = open(filename, 'r')
    lines = fd.readlines()
    for line in lines:
        ll = line.strip().split()
        if grep[0] in line:
            file_data.append(int(ll[-1]))
        elif grep[1] in line:
            file_data.append(int(ll[-1]))
        elif grep[2] in line:
            file_data.append(float(ll[-3])) 
        elif grep[3] in line:
            file_data.append(float(ll[-3]))
        elif grep[4] in line:
            file_data.append(float(ll[-1])) #"{:.7e}".format(float(ll[-1]))
        elif grep[5] in line:
            file_data.append(int(ll[7]))            
        elif grep[6] in line:
            file_data.append(float(ll[2])) 
        elif grep[7] in line:
            file_data.append(float(ll[-1]))
    if len(file_data) < len(grep):
        print(filename)
    fd.close()
    return file_data

def create_df_NH_noether(filenames_data , files_data):
    df_vals = np.concatenate((filenames_data , files_data), axis=1)
 
    # re-order columns (personal preference)
    #  0      1      2            3                 4                    5                 6                  7                  8            9            10  
    #['Alg','deg', 'run', 'Global nodes','Total KSP Iterations', 'SNES Solve Time', 'DoFs/Sec in SNES', 'Strain Energy', './elasticity', 'Time (sec):', 'script']
    df_order = [0,1,3,4,5,6,7,9,10,8,2];
    df_vals = df_vals[:,df_order]
    #rename columns
    df_cols = ['Alg', 'deg', '#DoF', '#CG','Solve Time(s)','MDoFs/Sec', 'Strain Energy','Petsc Time(s)', 'Total Time(s)','np','run']
    
    df = pd.DataFrame(df_vals, columns = df_cols)
    #df["#DoF"] = pd.to_numeric(df["#DoF"])
    df["#DoF"] = 3 * df["#DoF"]
    pd.set_option('display.expand_frame_repr', False)

    df = df.sort_values(['Alg', 'deg', 'np', 'run'], ascending = (True, True,True,True))
    
    repeat = 3
    df_tmp = df.to_numpy()
    r,c = df_tmp.shape

    df_np_vals = np.zeros((int(r/repeat), int(c-1)))
    k=0
    for i in range(0,r,repeat):
        for j in range(repeat):
            df_np_vals[k] += (df_tmp[i+j,0:-1])/repeat 
        k=k+1

    df_np_cols = df_cols[0:-1] #drop 'run' column
    #create a final dataframe to return
    dff = pd.DataFrame(df_np_vals, columns = df_np_cols)

    dff["Alg"] = dff["Alg"].astype(int)
    dff["deg"] = dff["deg"].astype(int)
    dff["#CG"] = dff["#CG"].astype(int)
    dff["#DoF"] = dff["#DoF"].astype(int)
    dff["np"] = dff["np"].astype(int)
    return dff

def digitize(item):
    if '.' in item:
        item.replace('.', '', 1).isdigit()
        return float(item)
    elif item.isdigit():
        return int(item)
    else:
        return
        
def draw_time_table(df):
    #filters:
    #p
    
    p1 = df['deg']==1
    p2 = df['deg']==2
    p3 = df['deg']==3
    p4 = df['deg']==4
    ps = [p1,p2,p3,p4]
    #alg 
    alg1 = df['Alg']==1
    alg2 = df['Alg']==2
    alg3 = df['Alg']==3
    alg4 = df['Alg']==4
    algs = [alg1,alg2,alg3,alg4]
    time = np.zeros((4,4))

    for i in range(len(ps)):
        for j in range(len(algs)):
             time[i][j] = np.round(df.where((ps[i] & algs[j]))['Solve Time(s)'].dropna(), decimals = 2)
    print(time)

def run_alg_perf():
    folder_name = 'log_files_NH'
    filename_ext = '.log'
    #idx: 0      1         2  3  4  5   6  7 
    #    00_FSInitial-NH1_deg_1_cpu_64_run_1.log
    keep_idx = [1,3,7]

    logfile_keywords = ['Global nodes','Total KSP Iterations', 'SNES Solve Time', \
                        'DoFs/Sec in SNES', 'Strain Energy', './elasticity', 'Time (sec):', 'script']
                                        #line containing ./elasticity has number of processors
    appCtx=AppCtx()
    #filename attributes for appCtx
    appCtx.filename_ext = filename_ext
    appCtx.keep_idx = keep_idx
    appCtx.parse_filename = parse_filename_NH_noether #function pointer
    
    #file content attributes for appCtx
    appCtx.parse_file_content = parse_file_content_NH_noether #function pointer
    appCtx.logfile_keywords = logfile_keywords

    #parse files and filenames
    filenames_data , files_data = parse_log_files(folder_name, appCtx)

    #create a dataframe
    df = create_df_NH_noether(filenames_data , files_data)
    print(df)
    draw_time_table(df)
       

if __name__ == "__main__":

    run_alg_perf()

    
    


    

    

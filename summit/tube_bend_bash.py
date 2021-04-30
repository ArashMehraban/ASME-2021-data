import os, sys
import shutil
from collections import OrderedDict
import subprocess

#SE :Strain Energy Problem
class SE:
    def __init__(self, degree=None, mesh=None, nps=None, cps=None, times=None, repeat=None):
        self.degree = degree
        self.mesh = mesh
        self.nps = nps #np : number of processors
        self.cps = cps #cp :compute node
        self.times = times
        self.repeat = repeat

def create_bash(problem, bash_folder, nu, E, BC_sides, grep, log_folder, bash_file_run,userRun):
    # directory to for bash file storage
    path = os.getcwd() + "/" + bash_folder
    if(os.path.isdir(path)):
        shutil.rmtree(path) 
    # define the access rights
    access_rights = 0o755
    try:
        os.mkdir(path, access_rights)
    except OSError:
        print ("Creation of bash folder: %s failed" % path)
    else:
        print ("Successfully created bash folder %s" % path)

    #runs script file to runn all jobs
    #bash_file_run = "runLinE_com_deg_3.sh"
    frun = open(bash_file_run, "w")
    frun.write("#!/bin/bash")
    frun.write("\n\n")
    #frun.write("ml slurm/summit")
    frun.write("\n\n")
    frun.write("cd " + bash_folder)
    frun.write("\n\n")

    #os.chdir(os.path.join(os.getcwd(),bash_folder))          
    os.chdir(path)
    se = SE()
    for item in prob:
        se = item
        for i in range(len(se.nps)):
            p = se.degree
            msh = se.mesh
            np = se.nps[i]
            cp = se.cps[i]
            time = se.times[i]
            repeat = se.repeat
            bash_file = se.mesh[:-4] + '_cpu_' + str(np) + '_deg_' + str(se.degree) + '.sh'
            # Write bash file to be run 
            f = open(bash_file, "w")
            f.write("#!/bin/bash")
            f.write("\n")
            f.write("#SBATCH --partition=shas")
            f.write("\n")
            f.write("#SBATCH --qos=normal")
            f.write("\n")
            #f.write("#SBATCH --account=ucb-general")   
            f.write("#SBATCH --account=ucb214_summit1")
            f.write("\n")
            f.write("#SBATCH --time="+time)
            f.write("\n")
            if(se.mesh[13].isdigit()):
                refine = se.mesh[12:14]
            else:
                refine = se.mesh[12:13]
            f.write("#SBATCH --job-name=" + se.mesh[6:8] + refine + "d" + str(se.degree) + 'c' + str(np))
            f.write("\n")
            f.write("#SBATCH --nodes=" + str(cp))
            f.write("\n")
            f.write("#SBATCH --ntasks=" + str(np))
            f.write("\n")
            if(se.mesh[13].isdigit()):
                refine = se.mesh[12:14]
            else:
                refine = se.mesh[12:13]
            f.write("#SBATCH --output=" + se.mesh[6:8] + "_" + refine + "d" + str(se.degree) + 'c' + str(np) + ".%j.out")
            f.write("\n\n")
             #SUMMIT module loads
            f.write("ml purge")
            f.write("\n\n")
            f.write("export SLURM_EXPORT_ENV=ALL")
            f.write("\n")
            f.write("export LD_LIBRARY_PATH=/usr/lib64:$LD_LIBRARY_PATH")
            f.write("\n")
            f.write("module add gcc/8.2.0 openmpi cmake autotools valgrind")
            f.write("\n")
            f.write("export MKL=/curc/sw/intel/parallel_studio_xe_2018_update3_cluster_edition/mkl/lib/intel64")
            f.write("\n")
            f.write("export MKLROOT=/curc/sw/intel/parallel_studio_xe_2018_update3_cluster_edition/mkl")
            f.write("\n")
            f.write("export PETSC_DIR=/projects/arme5062/software/petsc PETSC_ARCH=ompi-gcc8-O3")
            f.write("\n")
            f.write("export CEED_DIR=/projects/arme5062/software/libCEED")
            f.write("\n")
            f.write("\n")
            #Create output folder for log files if it does not exist
            f.write("if [ ! -d \"../" + log_folder + "\" ]")
            f.write("\n")
            f.write("then")
            f.write("\n")
            f.write("   mkdir ../" + log_folder)
            f.write("\n")
            f.write("fi")
            f.write("\n\n")
            #run script
            for r in range(1,repeat+1):
                #store the start of the run time in script (per run)
                #f.write("START=$(date +%s.%N)")
                #f.write("\n")
                output_file = "\"" + msh[:-4] + "_deg_" + str(p) + "_cpu_" + str(np) + "_"+ userRun + "_" + str(r) + ".log\" "
                f.write("mpiexec -n " + str(np) + " ../elasticity -problem FSCurrent-NH2 " + " -degree " + str(p) + \
                        " -mesh ../meshes/" + str(msh) + \
                        " -E " + str(E) + " -nu " + str(nu) +  \
                        " -bc_clamp 998,999"  + " -bc_clamp_998_translate " + BC + \
                        " -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view " + \
                        grep + " ../" +log_folder + output_file)
                #f.write("\n")
                #f.write("command")
                #f.write("\n")
                ##store the end of the run time in script (per run)
                #f.write("END=$(date +%s.%N)")
                #f.write("\n")
                #f.write("DIFF=$(echo \"$END - $START\" | bc)")
                #f.write("\n")
                ##Append the time difference from script to the end of log file
                #f.write("echo \"script run time: \"${DIFF} >> ../" + log_folder + output_file)
                f.write("\n\n")
            f.close()
            bash_cmd = ["chmod", "+x", bash_file]
            process = subprocess.Popen(bash_cmd, stdout=subprocess.PIPE)
            frun.write("sbatch " + bash_file)
            frun.write("\n")
    frun.close()
    os.chdir("..")
    bash_cmd_run = ["chmod", "+x", bash_file_run]
    process = subprocess.Popen(bash_cmd_run, stdout=subprocess.PIPE)


if __name__ == "__main__":

                                                                                    #compressible Tube Bending
    #--------------------------------------------------------------------------------------------------------------------------------------------------------------------#
    bash_folder = "comp_tube_NH2_bash"
    bash_file_run = 'runNH2_comp.sh'
    log_folder = "log_files_tube_comp_NH/"
    userRun = 'run'
    
    nu = 0.3
    E = "{:.2e}".format(69e9)
    BC_sides = ['999', '998']
    BC = '0,-0.02,0'
    #extract below keywords and values from code AND indicate which folder to store them in
    grep = " | grep \"Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|.edu with\" > "


    prob = [SE(4, 'Tube8_20int_4.exo', [192,384,768,1536], [8,16,32,64], ['00:16:00','00:10:00','00:8:00','00:8:00'],3)]
##    prob = [SE(2, 'Tube8_20int_1.exo', [192,384,768,1536], [8,16,32,64], ['00:16:00','00:10:00','00:8:00','00:8:00'],3),\
##            SE(2, 'Tube8_20int_2.exo', [192,384,768,1536], [8,16,32,64], ['00:16:00','00:10:00','00:8:00','00:8:00'],3),\
##            SE(2, 'Tube8_20int_3.exo', [192,384,768,1536], [8,16,32,64], ['00:16:00','00:10:00','00:8:00','00:8:00'],3),\
##            SE(2, 'Tube8_20int_4.exo', [192,384,768,1536], [8,16,32,64], ['00:16:00','00:10:00','00:8:00','00:8:00'],3)]
##            #refine 1
##    prob = [SE(1, 'Tube8_20int_7.exo', [192,384,768,1536], [8,16,32,64], ['00:8:00','00:05:00','00:05:00','00:05:00'],3), \
##           SE(2, 'Tube8_20int_7.exo', [192,384,768,1536], [8,16,32,64], ['00:16:00','00:10:00','00:8:00','00:8:00'],3), \
##           SE(3, 'Tube8_20int_1.exo', [192,384,768,1536], [8,16,32,64], ['00:04:00','00:04:00','00:04:00','00:04:00'],3), \
##           SE(4, 'Tube8_20int_1.exo', [192,384,768,1536], [8,16,32,64], ['00:05:00','00:05:00','00:05:00','00:05:00'],3), \
##           #refine 2
##           SE(1, 'Tube8_20int_11.exo', [192,384,768,1536], [8,16,32,64], ['00:25:00','00:15:00','00:10:00','00:10:00'],3), \
##           SE(2, 'Tube8_20int_11.exo', [192,384,768,1536], [8,16,32,64], ['00:55:00','00:35:00','00:25:00','00:20:00'],3), \
##           SE(3, 'Tube8_20int_2.exo', [192,384,768,1536], [8,16,32,64], ['00:12:00','00:12:00','00:10:00','00:10:00'],3), \
##           SE(4, 'Tube8_20int_2.exo', [192,384,768,1536], [8,16,32,64], ['00:15:00','00:15:00','00:15:00','00:15:00'],3), \
##           #refine 3
##           SE(1, 'Tube8_20int_15.exo', [192,384,768,1536], [8,16,32,64], ['00:50:00','00:35:00','00:25:00','00:20:00'],3), \
##           SE(2, 'Tube8_20int_15.exo', [192,384,768,1536], [8,16,32,64], ['01:20:00','00:50:00','00:30:00','00:30:00'],3), \
##           SE(3, 'Tube8_20int_3.exo', [192,384,768,1536], [8,16,32,64], ['00:35:00','00:25:00','00:20:00','00:20:00'],3), \
##           SE(4, 'Tube8_20int_3.exo', [192,384,768,1536], [8,16,32,64], ['00:50:00','00:40:00','00:30:00','00:25:00'],3), \
##           #Finest mesh for L2_error
##           SE(4, 'Tube8_20int_19.exo', [1536], [64], ['02:30:00'],1)]

    create_bash(prob, bash_folder, nu, E, BC_sides, grep, log_folder, bash_file_run,userRun)
    #--------------------------------------------------------------------------------------------------------------------------------------------------------------------#

 






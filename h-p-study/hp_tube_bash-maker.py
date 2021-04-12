from collections import OrderedDict
import subprocess



nproc = [64]
problemName = ['FSCurrent-NH2']
degree = [1,2,3,4]
meshNames = ['Tube8_25int_0.exo', 'Tube8_25int_1.exo',  'Tube8_25int_2.exo',  'Tube8_25int_3.exo',  'Tube8_25int_4.exo']
nu = 0.3
E = "{:.2e}".format(69e9)
BC_sides = ['999', '998']
BC = '0,-20,0'
num_steps = 25
snes_rtol = 1e-7

repeat = 3

total_runs = repeat * len(nproc) * len(degree) * len(problemName) * len(meshNames)

prefix = ["{0:02}".format(i) for i in range(total_runs)]

bash_file = "hp_NH_runs.sh"



#extract below keywords and values from code AND indicate which folder to store them in
grep = " | grep \"Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with\" > "
folder_name = "log_files_NH_hp/"


# Write bash file to be run 
f = open(bash_file, "w")
f.write("#!/bin/bash")
f.write("\n\n")

#create user-defined folder_ame if it does not exists
f.write("if [ ! -d \"" + folder_name + "\" ]")
f.write("\n")
f.write("then")
f.write("\n")
f.write("   mkdir " + folder_name)
f.write("\n")
f.write("fi")
f.write("\n\n")

k=0
for p in degree:
    for np in nproc:
        for msh in meshNames:
            if((p == 3 and msh == 'Tube8_25int_4.exo') or (p == 2 and msh == 'Tube8_25int_4.exo')):
                continue
            for prob in problemName:
                for r in range(1,repeat+1):
                    f.write("echo \"running: " + str(prob) + " degree: " + str(p) + " with " + msh + " " + " on " + str(np) + " cores run " + str(r) + "...\"")
                    f.write("\n")
                    #store the start of the run time in script (per run)
                    f.write("START=$(date +%s.%N)")
                    f.write("\n")
                    output_file = "\"" + prefix[k] + "_" + "TubeRef_" + msh[-5] + "_deg_" + str(p) + \
                                  "_cpu_" + str(np) + "_run_" + str(r) + ".log\" "
#mpirun -n 16 ./elasticity -problem FSCurrent-NH2 -degree 3 -mesh ./meshes/Tube8.exo -nu 0.3 -E 1e8 -bc_clamp 998,999 -bc_clamp_998_translate 0,-2,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-7 -snes_monitor -log_view
                    f.write("mpiexec -n " + str(np) + " ./elasticity -problem " + prob + " -degree " + str(p) + \
                            " -mesh ./meshes/" + str(msh) +  \
                            " -E " + str(E) + " -nu " + str(nu) +  \
                            " -bc_clamp 998,999"  + " -bc_clamp_998_translate " + BC + \
                            " -num_steps " + str(num_steps) + \
                            " -snes_linesearch_type cp -snes_rtol " + str(snes_rtol) + " -log_view " + \
                            grep + folder_name + output_file)
                    k=k+1
                    f.write("\n")
                    f.write("command")
                    f.write("\n")
                    #store the end of the run time in script (per run)
                    f.write("END=$(date +%s.%N)")
                    f.write("\n")
                    f.write("DIFF=$(echo \"$END - $START\" | bc)")
                    f.write("\n")
                    #Append the time difference from script to the end of log file
                    f.write("echo \"script run time: \"${DIFF} >> " + folder_name + output_file)
                    f.write("\n\n")
f.close()
bash_cmd = ["chmod", "+x", bash_file]
process = subprocess.Popen(bash_cmd, stdout=subprocess.PIPE)    


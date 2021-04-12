#!/bin/bash

if [ ! -d "log_files_NH_16_cpu" ]
then
   mkdir log_files_NH_16_cpu
fi

echo "running: FSInitial-NH1 degree: 1 on 16 cores run 1..."
START=$(date +%s.%N)
mpiexec -bind-to core -map-by socket -n 16 ./elasticity -problem FSInitial-NH1 -degree 1 -mesh ./meshes/Tube8.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH_16_cpu"00_FSInitial-NH1_deg_1_cpu_16_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH_16_cpu"00_FSInitial-NH1_deg_1_cpu_16_run_1.log" 

echo "running: FSInitial-NH1 degree: 1 on 16 cores run 2..."
START=$(date +%s.%N)
mpiexec -bind-to core -map-by socket -n 16 ./elasticity -problem FSInitial-NH1 -degree 1 -mesh ./meshes/Tube8.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH_16_cpu"01_FSInitial-NH1_deg_1_cpu_16_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH_16_cpu"01_FSInitial-NH1_deg_1_cpu_16_run_2.log" 

echo "running: FSInitial-NH1 degree: 1 on 16 cores run 3..."
START=$(date +%s.%N)
mpiexec -bind-to core -map-by socket -n 16 ./elasticity -problem FSInitial-NH1 -degree 1 -mesh ./meshes/Tube8.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH_16_cpu"02_FSInitial-NH1_deg_1_cpu_16_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH_16_cpu"02_FSInitial-NH1_deg_1_cpu_16_run_3.log" 

echo "running: FSInitial-NH2 degree: 1 on 16 cores run 1..."
START=$(date +%s.%N)
mpiexec -bind-to core -map-by socket -n 16 ./elasticity -problem FSInitial-NH2 -degree 1 -mesh ./meshes/Tube8.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH_16_cpu"03_FSInitial-NH2_deg_1_cpu_16_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH_16_cpu"03_FSInitial-NH2_deg_1_cpu_16_run_1.log" 

echo "running: FSInitial-NH2 degree: 1 on 16 cores run 2..."
START=$(date +%s.%N)
mpiexec -bind-to core -map-by socket -n 16 ./elasticity -problem FSInitial-NH2 -degree 1 -mesh ./meshes/Tube8.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH_16_cpu"04_FSInitial-NH2_deg_1_cpu_16_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH_16_cpu"04_FSInitial-NH2_deg_1_cpu_16_run_2.log" 

echo "running: FSInitial-NH2 degree: 1 on 16 cores run 3..."
START=$(date +%s.%N)
mpiexec -bind-to core -map-by socket -n 16 ./elasticity -problem FSInitial-NH2 -degree 1 -mesh ./meshes/Tube8.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH_16_cpu"05_FSInitial-NH2_deg_1_cpu_16_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH_16_cpu"05_FSInitial-NH2_deg_1_cpu_16_run_3.log" 

echo "running: FSCurrent-NH1 degree: 1 on 16 cores run 1..."
START=$(date +%s.%N)
mpiexec -bind-to core -map-by socket -n 16 ./elasticity -problem FSCurrent-NH1 -degree 1 -mesh ./meshes/Tube8.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH_16_cpu"06_FSCurrent-NH1_deg_1_cpu_16_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH_16_cpu"06_FSCurrent-NH1_deg_1_cpu_16_run_1.log" 

echo "running: FSCurrent-NH1 degree: 1 on 16 cores run 2..."
START=$(date +%s.%N)
mpiexec -bind-to core -map-by socket -n 16 ./elasticity -problem FSCurrent-NH1 -degree 1 -mesh ./meshes/Tube8.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH_16_cpu"07_FSCurrent-NH1_deg_1_cpu_16_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH_16_cpu"07_FSCurrent-NH1_deg_1_cpu_16_run_2.log" 

echo "running: FSCurrent-NH1 degree: 1 on 16 cores run 3..."
START=$(date +%s.%N)
mpiexec -bind-to core -map-by socket -n 16 ./elasticity -problem FSCurrent-NH1 -degree 1 -mesh ./meshes/Tube8.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH_16_cpu"08_FSCurrent-NH1_deg_1_cpu_16_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH_16_cpu"08_FSCurrent-NH1_deg_1_cpu_16_run_3.log" 

echo "running: FSCurrent-NH2 degree: 1 on 16 cores run 1..."
START=$(date +%s.%N)
mpiexec -bind-to core -map-by socket -n 16 ./elasticity -problem FSCurrent-NH2 -degree 1 -mesh ./meshes/Tube8.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH_16_cpu"09_FSCurrent-NH2_deg_1_cpu_16_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH_16_cpu"09_FSCurrent-NH2_deg_1_cpu_16_run_1.log" 

echo "running: FSCurrent-NH2 degree: 1 on 16 cores run 2..."
START=$(date +%s.%N)
mpiexec -bind-to core -map-by socket -n 16 ./elasticity -problem FSCurrent-NH2 -degree 1 -mesh ./meshes/Tube8.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH_16_cpu"10_FSCurrent-NH2_deg_1_cpu_16_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH_16_cpu"10_FSCurrent-NH2_deg_1_cpu_16_run_2.log" 

echo "running: FSCurrent-NH2 degree: 1 on 16 cores run 3..."
START=$(date +%s.%N)
mpiexec -bind-to core -map-by socket -n 16 ./elasticity -problem FSCurrent-NH2 -degree 1 -mesh ./meshes/Tube8.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH_16_cpu"11_FSCurrent-NH2_deg_1_cpu_16_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH_16_cpu"11_FSCurrent-NH2_deg_1_cpu_16_run_3.log" 

echo "running: FSInitial-NH1 degree: 2 on 16 cores run 1..."
START=$(date +%s.%N)
mpiexec -bind-to core -map-by socket -n 16 ./elasticity -problem FSInitial-NH1 -degree 2 -mesh ./meshes/Tube8.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH_16_cpu"12_FSInitial-NH1_deg_2_cpu_16_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH_16_cpu"12_FSInitial-NH1_deg_2_cpu_16_run_1.log" 

echo "running: FSInitial-NH1 degree: 2 on 16 cores run 2..."
START=$(date +%s.%N)
mpiexec -bind-to core -map-by socket -n 16 ./elasticity -problem FSInitial-NH1 -degree 2 -mesh ./meshes/Tube8.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH_16_cpu"13_FSInitial-NH1_deg_2_cpu_16_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH_16_cpu"13_FSInitial-NH1_deg_2_cpu_16_run_2.log" 

echo "running: FSInitial-NH1 degree: 2 on 16 cores run 3..."
START=$(date +%s.%N)
mpiexec -bind-to core -map-by socket -n 16 ./elasticity -problem FSInitial-NH1 -degree 2 -mesh ./meshes/Tube8.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH_16_cpu"14_FSInitial-NH1_deg_2_cpu_16_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH_16_cpu"14_FSInitial-NH1_deg_2_cpu_16_run_3.log" 

echo "running: FSInitial-NH2 degree: 2 on 16 cores run 1..."
START=$(date +%s.%N)
mpiexec -bind-to core -map-by socket -n 16 ./elasticity -problem FSInitial-NH2 -degree 2 -mesh ./meshes/Tube8.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH_16_cpu"15_FSInitial-NH2_deg_2_cpu_16_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH_16_cpu"15_FSInitial-NH2_deg_2_cpu_16_run_1.log" 

echo "running: FSInitial-NH2 degree: 2 on 16 cores run 2..."
START=$(date +%s.%N)
mpiexec -bind-to core -map-by socket -n 16 ./elasticity -problem FSInitial-NH2 -degree 2 -mesh ./meshes/Tube8.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH_16_cpu"16_FSInitial-NH2_deg_2_cpu_16_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH_16_cpu"16_FSInitial-NH2_deg_2_cpu_16_run_2.log" 

echo "running: FSInitial-NH2 degree: 2 on 16 cores run 3..."
START=$(date +%s.%N)
mpiexec -bind-to core -map-by socket -n 16 ./elasticity -problem FSInitial-NH2 -degree 2 -mesh ./meshes/Tube8.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH_16_cpu"17_FSInitial-NH2_deg_2_cpu_16_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH_16_cpu"17_FSInitial-NH2_deg_2_cpu_16_run_3.log" 

echo "running: FSCurrent-NH1 degree: 2 on 16 cores run 1..."
START=$(date +%s.%N)
mpiexec -bind-to core -map-by socket -n 16 ./elasticity -problem FSCurrent-NH1 -degree 2 -mesh ./meshes/Tube8.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH_16_cpu"18_FSCurrent-NH1_deg_2_cpu_16_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH_16_cpu"18_FSCurrent-NH1_deg_2_cpu_16_run_1.log" 

echo "running: FSCurrent-NH1 degree: 2 on 16 cores run 2..."
START=$(date +%s.%N)
mpiexec -bind-to core -map-by socket -n 16 ./elasticity -problem FSCurrent-NH1 -degree 2 -mesh ./meshes/Tube8.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH_16_cpu"19_FSCurrent-NH1_deg_2_cpu_16_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH_16_cpu"19_FSCurrent-NH1_deg_2_cpu_16_run_2.log" 

echo "running: FSCurrent-NH1 degree: 2 on 16 cores run 3..."
START=$(date +%s.%N)
mpiexec -bind-to core -map-by socket -n 16 ./elasticity -problem FSCurrent-NH1 -degree 2 -mesh ./meshes/Tube8.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH_16_cpu"20_FSCurrent-NH1_deg_2_cpu_16_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH_16_cpu"20_FSCurrent-NH1_deg_2_cpu_16_run_3.log" 

echo "running: FSCurrent-NH2 degree: 2 on 16 cores run 1..."
START=$(date +%s.%N)
mpiexec -bind-to core -map-by socket -n 16 ./elasticity -problem FSCurrent-NH2 -degree 2 -mesh ./meshes/Tube8.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH_16_cpu"21_FSCurrent-NH2_deg_2_cpu_16_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH_16_cpu"21_FSCurrent-NH2_deg_2_cpu_16_run_1.log" 

echo "running: FSCurrent-NH2 degree: 2 on 16 cores run 2..."
START=$(date +%s.%N)
mpiexec -bind-to core -map-by socket -n 16 ./elasticity -problem FSCurrent-NH2 -degree 2 -mesh ./meshes/Tube8.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH_16_cpu"22_FSCurrent-NH2_deg_2_cpu_16_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH_16_cpu"22_FSCurrent-NH2_deg_2_cpu_16_run_2.log" 

echo "running: FSCurrent-NH2 degree: 2 on 16 cores run 3..."
START=$(date +%s.%N)
mpiexec -bind-to core -map-by socket -n 16 ./elasticity -problem FSCurrent-NH2 -degree 2 -mesh ./meshes/Tube8.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH_16_cpu"23_FSCurrent-NH2_deg_2_cpu_16_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH_16_cpu"23_FSCurrent-NH2_deg_2_cpu_16_run_3.log" 

echo "running: FSInitial-NH1 degree: 3 on 16 cores run 1..."
START=$(date +%s.%N)
mpiexec -bind-to core -map-by socket -n 16 ./elasticity -problem FSInitial-NH1 -degree 3 -mesh ./meshes/Tube8.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH_16_cpu"24_FSInitial-NH1_deg_3_cpu_16_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH_16_cpu"24_FSInitial-NH1_deg_3_cpu_16_run_1.log" 

echo "running: FSInitial-NH1 degree: 3 on 16 cores run 2..."
START=$(date +%s.%N)
mpiexec -bind-to core -map-by socket -n 16 ./elasticity -problem FSInitial-NH1 -degree 3 -mesh ./meshes/Tube8.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH_16_cpu"25_FSInitial-NH1_deg_3_cpu_16_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH_16_cpu"25_FSInitial-NH1_deg_3_cpu_16_run_2.log" 

echo "running: FSInitial-NH1 degree: 3 on 16 cores run 3..."
START=$(date +%s.%N)
mpiexec -bind-to core -map-by socket -n 16 ./elasticity -problem FSInitial-NH1 -degree 3 -mesh ./meshes/Tube8.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH_16_cpu"26_FSInitial-NH1_deg_3_cpu_16_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH_16_cpu"26_FSInitial-NH1_deg_3_cpu_16_run_3.log" 

echo "running: FSInitial-NH2 degree: 3 on 16 cores run 1..."
START=$(date +%s.%N)
mpiexec -bind-to core -map-by socket -n 16 ./elasticity -problem FSInitial-NH2 -degree 3 -mesh ./meshes/Tube8.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH_16_cpu"27_FSInitial-NH2_deg_3_cpu_16_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH_16_cpu"27_FSInitial-NH2_deg_3_cpu_16_run_1.log" 

echo "running: FSInitial-NH2 degree: 3 on 16 cores run 2..."
START=$(date +%s.%N)
mpiexec -bind-to core -map-by socket -n 16 ./elasticity -problem FSInitial-NH2 -degree 3 -mesh ./meshes/Tube8.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH_16_cpu"28_FSInitial-NH2_deg_3_cpu_16_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH_16_cpu"28_FSInitial-NH2_deg_3_cpu_16_run_2.log" 

echo "running: FSInitial-NH2 degree: 3 on 16 cores run 3..."
START=$(date +%s.%N)
mpiexec -bind-to core -map-by socket -n 16 ./elasticity -problem FSInitial-NH2 -degree 3 -mesh ./meshes/Tube8.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH_16_cpu"29_FSInitial-NH2_deg_3_cpu_16_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH_16_cpu"29_FSInitial-NH2_deg_3_cpu_16_run_3.log" 

echo "running: FSCurrent-NH1 degree: 3 on 16 cores run 1..."
START=$(date +%s.%N)
mpiexec -bind-to core -map-by socket -n 16 ./elasticity -problem FSCurrent-NH1 -degree 3 -mesh ./meshes/Tube8.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH_16_cpu"30_FSCurrent-NH1_deg_3_cpu_16_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH_16_cpu"30_FSCurrent-NH1_deg_3_cpu_16_run_1.log" 

echo "running: FSCurrent-NH1 degree: 3 on 16 cores run 2..."
START=$(date +%s.%N)
mpiexec -bind-to core -map-by socket -n 16 ./elasticity -problem FSCurrent-NH1 -degree 3 -mesh ./meshes/Tube8.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH_16_cpu"31_FSCurrent-NH1_deg_3_cpu_16_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH_16_cpu"31_FSCurrent-NH1_deg_3_cpu_16_run_2.log" 

echo "running: FSCurrent-NH1 degree: 3 on 16 cores run 3..."
START=$(date +%s.%N)
mpiexec -bind-to core -map-by socket -n 16 ./elasticity -problem FSCurrent-NH1 -degree 3 -mesh ./meshes/Tube8.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH_16_cpu"32_FSCurrent-NH1_deg_3_cpu_16_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH_16_cpu"32_FSCurrent-NH1_deg_3_cpu_16_run_3.log" 

echo "running: FSCurrent-NH2 degree: 3 on 16 cores run 1..."
START=$(date +%s.%N)
mpiexec -bind-to core -map-by socket -n 16 ./elasticity -problem FSCurrent-NH2 -degree 3 -mesh ./meshes/Tube8.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH_16_cpu"33_FSCurrent-NH2_deg_3_cpu_16_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH_16_cpu"33_FSCurrent-NH2_deg_3_cpu_16_run_1.log" 

echo "running: FSCurrent-NH2 degree: 3 on 16 cores run 2..."
START=$(date +%s.%N)
mpiexec -bind-to core -map-by socket -n 16 ./elasticity -problem FSCurrent-NH2 -degree 3 -mesh ./meshes/Tube8.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH_16_cpu"34_FSCurrent-NH2_deg_3_cpu_16_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH_16_cpu"34_FSCurrent-NH2_deg_3_cpu_16_run_2.log" 

echo "running: FSCurrent-NH2 degree: 3 on 16 cores run 3..."
START=$(date +%s.%N)
mpiexec -bind-to core -map-by socket -n 16 ./elasticity -problem FSCurrent-NH2 -degree 3 -mesh ./meshes/Tube8.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH_16_cpu"35_FSCurrent-NH2_deg_3_cpu_16_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH_16_cpu"35_FSCurrent-NH2_deg_3_cpu_16_run_3.log" 

echo "running: FSInitial-NH1 degree: 4 on 16 cores run 1..."
START=$(date +%s.%N)
mpiexec -bind-to core -map-by socket -n 16 ./elasticity -problem FSInitial-NH1 -degree 4 -mesh ./meshes/Tube8.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH_16_cpu"36_FSInitial-NH1_deg_4_cpu_16_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH_16_cpu"36_FSInitial-NH1_deg_4_cpu_16_run_1.log" 

echo "running: FSInitial-NH1 degree: 4 on 16 cores run 2..."
START=$(date +%s.%N)
mpiexec -bind-to core -map-by socket -n 16 ./elasticity -problem FSInitial-NH1 -degree 4 -mesh ./meshes/Tube8.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH_16_cpu"37_FSInitial-NH1_deg_4_cpu_16_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH_16_cpu"37_FSInitial-NH1_deg_4_cpu_16_run_2.log" 

echo "running: FSInitial-NH1 degree: 4 on 16 cores run 3..."
START=$(date +%s.%N)
mpiexec -bind-to core -map-by socket -n 16 ./elasticity -problem FSInitial-NH1 -degree 4 -mesh ./meshes/Tube8.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH_16_cpu"38_FSInitial-NH1_deg_4_cpu_16_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH_16_cpu"38_FSInitial-NH1_deg_4_cpu_16_run_3.log" 

echo "running: FSInitial-NH2 degree: 4 on 16 cores run 1..."
START=$(date +%s.%N)
mpiexec -bind-to core -map-by socket -n 16 ./elasticity -problem FSInitial-NH2 -degree 4 -mesh ./meshes/Tube8.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH_16_cpu"39_FSInitial-NH2_deg_4_cpu_16_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH_16_cpu"39_FSInitial-NH2_deg_4_cpu_16_run_1.log" 

echo "running: FSInitial-NH2 degree: 4 on 16 cores run 2..."
START=$(date +%s.%N)
mpiexec -bind-to core -map-by socket -n 16 ./elasticity -problem FSInitial-NH2 -degree 4 -mesh ./meshes/Tube8.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH_16_cpu"40_FSInitial-NH2_deg_4_cpu_16_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH_16_cpu"40_FSInitial-NH2_deg_4_cpu_16_run_2.log" 

echo "running: FSInitial-NH2 degree: 4 on 16 cores run 3..."
START=$(date +%s.%N)
mpiexec -bind-to core -map-by socket -n 16 ./elasticity -problem FSInitial-NH2 -degree 4 -mesh ./meshes/Tube8.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH_16_cpu"41_FSInitial-NH2_deg_4_cpu_16_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH_16_cpu"41_FSInitial-NH2_deg_4_cpu_16_run_3.log" 

echo "running: FSCurrent-NH1 degree: 4 on 16 cores run 1..."
START=$(date +%s.%N)
mpiexec -bind-to core -map-by socket -n 16 ./elasticity -problem FSCurrent-NH1 -degree 4 -mesh ./meshes/Tube8.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH_16_cpu"42_FSCurrent-NH1_deg_4_cpu_16_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH_16_cpu"42_FSCurrent-NH1_deg_4_cpu_16_run_1.log" 

echo "running: FSCurrent-NH1 degree: 4 on 16 cores run 2..."
START=$(date +%s.%N)
mpiexec -bind-to core -map-by socket -n 16 ./elasticity -problem FSCurrent-NH1 -degree 4 -mesh ./meshes/Tube8.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH_16_cpu"43_FSCurrent-NH1_deg_4_cpu_16_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH_16_cpu"43_FSCurrent-NH1_deg_4_cpu_16_run_2.log" 

echo "running: FSCurrent-NH1 degree: 4 on 16 cores run 3..."
START=$(date +%s.%N)
mpiexec -bind-to core -map-by socket -n 16 ./elasticity -problem FSCurrent-NH1 -degree 4 -mesh ./meshes/Tube8.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH_16_cpu"44_FSCurrent-NH1_deg_4_cpu_16_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH_16_cpu"44_FSCurrent-NH1_deg_4_cpu_16_run_3.log" 

echo "running: FSCurrent-NH2 degree: 4 on 16 cores run 1..."
START=$(date +%s.%N)
mpiexec -bind-to core -map-by socket -n 16 ./elasticity -problem FSCurrent-NH2 -degree 4 -mesh ./meshes/Tube8.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH_16_cpu"45_FSCurrent-NH2_deg_4_cpu_16_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH_16_cpu"45_FSCurrent-NH2_deg_4_cpu_16_run_1.log" 

echo "running: FSCurrent-NH2 degree: 4 on 16 cores run 2..."
START=$(date +%s.%N)
mpiexec -bind-to core -map-by socket -n 16 ./elasticity -problem FSCurrent-NH2 -degree 4 -mesh ./meshes/Tube8.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH_16_cpu"46_FSCurrent-NH2_deg_4_cpu_16_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH_16_cpu"46_FSCurrent-NH2_deg_4_cpu_16_run_2.log" 

echo "running: FSCurrent-NH2 degree: 4 on 16 cores run 3..."
START=$(date +%s.%N)
mpiexec -bind-to core -map-by socket -n 16 ./elasticity -problem FSCurrent-NH2 -degree 4 -mesh ./meshes/Tube8.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH_16_cpu"47_FSCurrent-NH2_deg_4_cpu_16_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH_16_cpu"47_FSCurrent-NH2_deg_4_cpu_16_run_3.log" 


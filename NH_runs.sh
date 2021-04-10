#!/bin/bash

if [ ! -d "log_files_NH/" ]
then
   mkdir log_files_NH/
fi

echo "running: FSInitial-NH1 degree: 1 on 64 cores run 1..."
START=$(date +%s.%N)
mpiexec -bind-to core -map-by socket -n 64 ./elasticity -problem FSInitial-NH1 -degree 1 -mesh ./meshes/Tube8.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH/"00_FSInitial-NH1_deg_1_cpu_64_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH/"00_FSInitial-NH1_deg_1_cpu_64_run_1.log" 

echo "running: FSInitial-NH1 degree: 1 on 64 cores run 2..."
START=$(date +%s.%N)
mpiexec -bind-to core -map-by socket -n 64 ./elasticity -problem FSInitial-NH1 -degree 1 -mesh ./meshes/Tube8.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH/"01_FSInitial-NH1_deg_1_cpu_64_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH/"01_FSInitial-NH1_deg_1_cpu_64_run_2.log" 

echo "running: FSInitial-NH1 degree: 1 on 64 cores run 3..."
START=$(date +%s.%N)
mpiexec -bind-to core -map-by socket -n 64 ./elasticity -problem FSInitial-NH1 -degree 1 -mesh ./meshes/Tube8.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH/"02_FSInitial-NH1_deg_1_cpu_64_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH/"02_FSInitial-NH1_deg_1_cpu_64_run_3.log" 

echo "running: FSInitial-NH2 degree: 1 on 64 cores run 1..."
START=$(date +%s.%N)
mpiexec -bind-to core -map-by socket -n 64 ./elasticity -problem FSInitial-NH2 -degree 1 -mesh ./meshes/Tube8.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH/"03_FSInitial-NH2_deg_1_cpu_64_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH/"03_FSInitial-NH2_deg_1_cpu_64_run_1.log" 

echo "running: FSInitial-NH2 degree: 1 on 64 cores run 2..."
START=$(date +%s.%N)
mpiexec -bind-to core -map-by socket -n 64 ./elasticity -problem FSInitial-NH2 -degree 1 -mesh ./meshes/Tube8.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH/"04_FSInitial-NH2_deg_1_cpu_64_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH/"04_FSInitial-NH2_deg_1_cpu_64_run_2.log" 

echo "running: FSInitial-NH2 degree: 1 on 64 cores run 3..."
START=$(date +%s.%N)
mpiexec -bind-to core -map-by socket -n 64 ./elasticity -problem FSInitial-NH2 -degree 1 -mesh ./meshes/Tube8.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH/"05_FSInitial-NH2_deg_1_cpu_64_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH/"05_FSInitial-NH2_deg_1_cpu_64_run_3.log" 

echo "running: FSCurrent-NH1 degree: 1 on 64 cores run 1..."
START=$(date +%s.%N)
mpiexec -bind-to core -map-by socket -n 64 ./elasticity -problem FSCurrent-NH1 -degree 1 -mesh ./meshes/Tube8.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH/"06_FSCurrent-NH1_deg_1_cpu_64_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH/"06_FSCurrent-NH1_deg_1_cpu_64_run_1.log" 

echo "running: FSCurrent-NH1 degree: 1 on 64 cores run 2..."
START=$(date +%s.%N)
mpiexec -bind-to core -map-by socket -n 64 ./elasticity -problem FSCurrent-NH1 -degree 1 -mesh ./meshes/Tube8.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH/"07_FSCurrent-NH1_deg_1_cpu_64_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH/"07_FSCurrent-NH1_deg_1_cpu_64_run_2.log" 

echo "running: FSCurrent-NH1 degree: 1 on 64 cores run 3..."
START=$(date +%s.%N)
mpiexec -bind-to core -map-by socket -n 64 ./elasticity -problem FSCurrent-NH1 -degree 1 -mesh ./meshes/Tube8.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH/"08_FSCurrent-NH1_deg_1_cpu_64_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH/"08_FSCurrent-NH1_deg_1_cpu_64_run_3.log" 

echo "running: FSCurrent-NH2 degree: 1 on 64 cores run 1..."
START=$(date +%s.%N)
mpiexec -bind-to core -map-by socket -n 64 ./elasticity -problem FSCurrent-NH2 -degree 1 -mesh ./meshes/Tube8.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH/"09_FSCurrent-NH2_deg_1_cpu_64_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH/"09_FSCurrent-NH2_deg_1_cpu_64_run_1.log" 

echo "running: FSCurrent-NH2 degree: 1 on 64 cores run 2..."
START=$(date +%s.%N)
mpiexec -bind-to core -map-by socket -n 64 ./elasticity -problem FSCurrent-NH2 -degree 1 -mesh ./meshes/Tube8.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH/"10_FSCurrent-NH2_deg_1_cpu_64_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH/"10_FSCurrent-NH2_deg_1_cpu_64_run_2.log" 

echo "running: FSCurrent-NH2 degree: 1 on 64 cores run 3..."
START=$(date +%s.%N)
mpiexec -bind-to core -map-by socket -n 64 ./elasticity -problem FSCurrent-NH2 -degree 1 -mesh ./meshes/Tube8.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH/"11_FSCurrent-NH2_deg_1_cpu_64_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH/"11_FSCurrent-NH2_deg_1_cpu_64_run_3.log" 

echo "running: FSInitial-NH1 degree: 2 on 64 cores run 1..."
START=$(date +%s.%N)
mpiexec -bind-to core -map-by socket -n 64 ./elasticity -problem FSInitial-NH1 -degree 2 -mesh ./meshes/Tube8.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH/"12_FSInitial-NH1_deg_2_cpu_64_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH/"12_FSInitial-NH1_deg_2_cpu_64_run_1.log" 

echo "running: FSInitial-NH1 degree: 2 on 64 cores run 2..."
START=$(date +%s.%N)
mpiexec -bind-to core -map-by socket -n 64 ./elasticity -problem FSInitial-NH1 -degree 2 -mesh ./meshes/Tube8.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH/"13_FSInitial-NH1_deg_2_cpu_64_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH/"13_FSInitial-NH1_deg_2_cpu_64_run_2.log" 

echo "running: FSInitial-NH1 degree: 2 on 64 cores run 3..."
START=$(date +%s.%N)
mpiexec -bind-to core -map-by socket -n 64 ./elasticity -problem FSInitial-NH1 -degree 2 -mesh ./meshes/Tube8.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH/"14_FSInitial-NH1_deg_2_cpu_64_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH/"14_FSInitial-NH1_deg_2_cpu_64_run_3.log" 

echo "running: FSInitial-NH2 degree: 2 on 64 cores run 1..."
START=$(date +%s.%N)
mpiexec -bind-to core -map-by socket -n 64 ./elasticity -problem FSInitial-NH2 -degree 2 -mesh ./meshes/Tube8.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH/"15_FSInitial-NH2_deg_2_cpu_64_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH/"15_FSInitial-NH2_deg_2_cpu_64_run_1.log" 

echo "running: FSInitial-NH2 degree: 2 on 64 cores run 2..."
START=$(date +%s.%N)
mpiexec -bind-to core -map-by socket -n 64 ./elasticity -problem FSInitial-NH2 -degree 2 -mesh ./meshes/Tube8.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH/"16_FSInitial-NH2_deg_2_cpu_64_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH/"16_FSInitial-NH2_deg_2_cpu_64_run_2.log" 

echo "running: FSInitial-NH2 degree: 2 on 64 cores run 3..."
START=$(date +%s.%N)
mpiexec -bind-to core -map-by socket -n 64 ./elasticity -problem FSInitial-NH2 -degree 2 -mesh ./meshes/Tube8.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH/"17_FSInitial-NH2_deg_2_cpu_64_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH/"17_FSInitial-NH2_deg_2_cpu_64_run_3.log" 

echo "running: FSCurrent-NH1 degree: 2 on 64 cores run 1..."
START=$(date +%s.%N)
mpiexec -bind-to core -map-by socket -n 64 ./elasticity -problem FSCurrent-NH1 -degree 2 -mesh ./meshes/Tube8.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH/"18_FSCurrent-NH1_deg_2_cpu_64_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH/"18_FSCurrent-NH1_deg_2_cpu_64_run_1.log" 

echo "running: FSCurrent-NH1 degree: 2 on 64 cores run 2..."
START=$(date +%s.%N)
mpiexec -bind-to core -map-by socket -n 64 ./elasticity -problem FSCurrent-NH1 -degree 2 -mesh ./meshes/Tube8.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH/"19_FSCurrent-NH1_deg_2_cpu_64_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH/"19_FSCurrent-NH1_deg_2_cpu_64_run_2.log" 

echo "running: FSCurrent-NH1 degree: 2 on 64 cores run 3..."
START=$(date +%s.%N)
mpiexec -bind-to core -map-by socket -n 64 ./elasticity -problem FSCurrent-NH1 -degree 2 -mesh ./meshes/Tube8.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH/"20_FSCurrent-NH1_deg_2_cpu_64_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH/"20_FSCurrent-NH1_deg_2_cpu_64_run_3.log" 

echo "running: FSCurrent-NH2 degree: 2 on 64 cores run 1..."
START=$(date +%s.%N)
mpiexec -bind-to core -map-by socket -n 64 ./elasticity -problem FSCurrent-NH2 -degree 2 -mesh ./meshes/Tube8.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH/"21_FSCurrent-NH2_deg_2_cpu_64_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH/"21_FSCurrent-NH2_deg_2_cpu_64_run_1.log" 

echo "running: FSCurrent-NH2 degree: 2 on 64 cores run 2..."
START=$(date +%s.%N)
mpiexec -bind-to core -map-by socket -n 64 ./elasticity -problem FSCurrent-NH2 -degree 2 -mesh ./meshes/Tube8.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH/"22_FSCurrent-NH2_deg_2_cpu_64_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH/"22_FSCurrent-NH2_deg_2_cpu_64_run_2.log" 

echo "running: FSCurrent-NH2 degree: 2 on 64 cores run 3..."
START=$(date +%s.%N)
mpiexec -bind-to core -map-by socket -n 64 ./elasticity -problem FSCurrent-NH2 -degree 2 -mesh ./meshes/Tube8.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH/"23_FSCurrent-NH2_deg_2_cpu_64_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH/"23_FSCurrent-NH2_deg_2_cpu_64_run_3.log" 

echo "running: FSInitial-NH1 degree: 3 on 64 cores run 1..."
START=$(date +%s.%N)
mpiexec -bind-to core -map-by socket -n 64 ./elasticity -problem FSInitial-NH1 -degree 3 -mesh ./meshes/Tube8.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH/"24_FSInitial-NH1_deg_3_cpu_64_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH/"24_FSInitial-NH1_deg_3_cpu_64_run_1.log" 

echo "running: FSInitial-NH1 degree: 3 on 64 cores run 2..."
START=$(date +%s.%N)
mpiexec -bind-to core -map-by socket -n 64 ./elasticity -problem FSInitial-NH1 -degree 3 -mesh ./meshes/Tube8.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH/"25_FSInitial-NH1_deg_3_cpu_64_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH/"25_FSInitial-NH1_deg_3_cpu_64_run_2.log" 

echo "running: FSInitial-NH1 degree: 3 on 64 cores run 3..."
START=$(date +%s.%N)
mpiexec -bind-to core -map-by socket -n 64 ./elasticity -problem FSInitial-NH1 -degree 3 -mesh ./meshes/Tube8.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH/"26_FSInitial-NH1_deg_3_cpu_64_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH/"26_FSInitial-NH1_deg_3_cpu_64_run_3.log" 

echo "running: FSInitial-NH2 degree: 3 on 64 cores run 1..."
START=$(date +%s.%N)
mpiexec -bind-to core -map-by socket -n 64 ./elasticity -problem FSInitial-NH2 -degree 3 -mesh ./meshes/Tube8.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH/"27_FSInitial-NH2_deg_3_cpu_64_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH/"27_FSInitial-NH2_deg_3_cpu_64_run_1.log" 

echo "running: FSInitial-NH2 degree: 3 on 64 cores run 2..."
START=$(date +%s.%N)
mpiexec -bind-to core -map-by socket -n 64 ./elasticity -problem FSInitial-NH2 -degree 3 -mesh ./meshes/Tube8.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH/"28_FSInitial-NH2_deg_3_cpu_64_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH/"28_FSInitial-NH2_deg_3_cpu_64_run_2.log" 

echo "running: FSInitial-NH2 degree: 3 on 64 cores run 3..."
START=$(date +%s.%N)
mpiexec -bind-to core -map-by socket -n 64 ./elasticity -problem FSInitial-NH2 -degree 3 -mesh ./meshes/Tube8.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH/"29_FSInitial-NH2_deg_3_cpu_64_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH/"29_FSInitial-NH2_deg_3_cpu_64_run_3.log" 

echo "running: FSCurrent-NH1 degree: 3 on 64 cores run 1..."
START=$(date +%s.%N)
mpiexec -bind-to core -map-by socket -n 64 ./elasticity -problem FSCurrent-NH1 -degree 3 -mesh ./meshes/Tube8.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH/"30_FSCurrent-NH1_deg_3_cpu_64_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH/"30_FSCurrent-NH1_deg_3_cpu_64_run_1.log" 

echo "running: FSCurrent-NH1 degree: 3 on 64 cores run 2..."
START=$(date +%s.%N)
mpiexec -bind-to core -map-by socket -n 64 ./elasticity -problem FSCurrent-NH1 -degree 3 -mesh ./meshes/Tube8.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH/"31_FSCurrent-NH1_deg_3_cpu_64_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH/"31_FSCurrent-NH1_deg_3_cpu_64_run_2.log" 

echo "running: FSCurrent-NH1 degree: 3 on 64 cores run 3..."
START=$(date +%s.%N)
mpiexec -bind-to core -map-by socket -n 64 ./elasticity -problem FSCurrent-NH1 -degree 3 -mesh ./meshes/Tube8.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH/"32_FSCurrent-NH1_deg_3_cpu_64_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH/"32_FSCurrent-NH1_deg_3_cpu_64_run_3.log" 

echo "running: FSCurrent-NH2 degree: 3 on 64 cores run 1..."
START=$(date +%s.%N)
mpiexec -bind-to core -map-by socket -n 64 ./elasticity -problem FSCurrent-NH2 -degree 3 -mesh ./meshes/Tube8.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH/"33_FSCurrent-NH2_deg_3_cpu_64_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH/"33_FSCurrent-NH2_deg_3_cpu_64_run_1.log" 

echo "running: FSCurrent-NH2 degree: 3 on 64 cores run 2..."
START=$(date +%s.%N)
mpiexec -bind-to core -map-by socket -n 64 ./elasticity -problem FSCurrent-NH2 -degree 3 -mesh ./meshes/Tube8.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH/"34_FSCurrent-NH2_deg_3_cpu_64_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH/"34_FSCurrent-NH2_deg_3_cpu_64_run_2.log" 

echo "running: FSCurrent-NH2 degree: 3 on 64 cores run 3..."
START=$(date +%s.%N)
mpiexec -bind-to core -map-by socket -n 64 ./elasticity -problem FSCurrent-NH2 -degree 3 -mesh ./meshes/Tube8.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH/"35_FSCurrent-NH2_deg_3_cpu_64_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH/"35_FSCurrent-NH2_deg_3_cpu_64_run_3.log" 

echo "running: FSInitial-NH1 degree: 4 on 64 cores run 1..."
START=$(date +%s.%N)
mpiexec -bind-to core -map-by socket -n 64 ./elasticity -problem FSInitial-NH1 -degree 4 -mesh ./meshes/Tube8.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH/"36_FSInitial-NH1_deg_4_cpu_64_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH/"36_FSInitial-NH1_deg_4_cpu_64_run_1.log" 

echo "running: FSInitial-NH1 degree: 4 on 64 cores run 2..."
START=$(date +%s.%N)
mpiexec -bind-to core -map-by socket -n 64 ./elasticity -problem FSInitial-NH1 -degree 4 -mesh ./meshes/Tube8.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH/"37_FSInitial-NH1_deg_4_cpu_64_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH/"37_FSInitial-NH1_deg_4_cpu_64_run_2.log" 

echo "running: FSInitial-NH1 degree: 4 on 64 cores run 3..."
START=$(date +%s.%N)
mpiexec -bind-to core -map-by socket -n 64 ./elasticity -problem FSInitial-NH1 -degree 4 -mesh ./meshes/Tube8.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH/"38_FSInitial-NH1_deg_4_cpu_64_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH/"38_FSInitial-NH1_deg_4_cpu_64_run_3.log" 

echo "running: FSInitial-NH2 degree: 4 on 64 cores run 1..."
START=$(date +%s.%N)
mpiexec -bind-to core -map-by socket -n 64 ./elasticity -problem FSInitial-NH2 -degree 4 -mesh ./meshes/Tube8.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH/"39_FSInitial-NH2_deg_4_cpu_64_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH/"39_FSInitial-NH2_deg_4_cpu_64_run_1.log" 

echo "running: FSInitial-NH2 degree: 4 on 64 cores run 2..."
START=$(date +%s.%N)
mpiexec -bind-to core -map-by socket -n 64 ./elasticity -problem FSInitial-NH2 -degree 4 -mesh ./meshes/Tube8.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH/"40_FSInitial-NH2_deg_4_cpu_64_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH/"40_FSInitial-NH2_deg_4_cpu_64_run_2.log" 

echo "running: FSInitial-NH2 degree: 4 on 64 cores run 3..."
START=$(date +%s.%N)
mpiexec -bind-to core -map-by socket -n 64 ./elasticity -problem FSInitial-NH2 -degree 4 -mesh ./meshes/Tube8.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH/"41_FSInitial-NH2_deg_4_cpu_64_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH/"41_FSInitial-NH2_deg_4_cpu_64_run_3.log" 

echo "running: FSCurrent-NH1 degree: 4 on 64 cores run 1..."
START=$(date +%s.%N)
mpiexec -bind-to core -map-by socket -n 64 ./elasticity -problem FSCurrent-NH1 -degree 4 -mesh ./meshes/Tube8.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH/"42_FSCurrent-NH1_deg_4_cpu_64_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH/"42_FSCurrent-NH1_deg_4_cpu_64_run_1.log" 

echo "running: FSCurrent-NH1 degree: 4 on 64 cores run 2..."
START=$(date +%s.%N)
mpiexec -bind-to core -map-by socket -n 64 ./elasticity -problem FSCurrent-NH1 -degree 4 -mesh ./meshes/Tube8.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH/"43_FSCurrent-NH1_deg_4_cpu_64_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH/"43_FSCurrent-NH1_deg_4_cpu_64_run_2.log" 

echo "running: FSCurrent-NH1 degree: 4 on 64 cores run 3..."
START=$(date +%s.%N)
mpiexec -bind-to core -map-by socket -n 64 ./elasticity -problem FSCurrent-NH1 -degree 4 -mesh ./meshes/Tube8.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH/"44_FSCurrent-NH1_deg_4_cpu_64_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH/"44_FSCurrent-NH1_deg_4_cpu_64_run_3.log" 

echo "running: FSCurrent-NH2 degree: 4 on 64 cores run 1..."
START=$(date +%s.%N)
mpiexec -bind-to core -map-by socket -n 64 ./elasticity -problem FSCurrent-NH2 -degree 4 -mesh ./meshes/Tube8.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH/"45_FSCurrent-NH2_deg_4_cpu_64_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH/"45_FSCurrent-NH2_deg_4_cpu_64_run_1.log" 

echo "running: FSCurrent-NH2 degree: 4 on 64 cores run 2..."
START=$(date +%s.%N)
mpiexec -bind-to core -map-by socket -n 64 ./elasticity -problem FSCurrent-NH2 -degree 4 -mesh ./meshes/Tube8.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH/"46_FSCurrent-NH2_deg_4_cpu_64_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH/"46_FSCurrent-NH2_deg_4_cpu_64_run_2.log" 

echo "running: FSCurrent-NH2 degree: 4 on 64 cores run 3..."
START=$(date +%s.%N)
mpiexec -bind-to core -map-by socket -n 64 ./elasticity -problem FSCurrent-NH2 -degree 4 -mesh ./meshes/Tube8.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH/"47_FSCurrent-NH2_deg_4_cpu_64_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH/"47_FSCurrent-NH2_deg_4_cpu_64_run_3.log" 


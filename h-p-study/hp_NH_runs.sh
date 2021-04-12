#!/bin/bash

if [ ! -d "log_files_NH_hp/" ]
then
   mkdir log_files_NH_hp/
fi

echo "running: FSCurrent-NH2 degree: 1 with Tube8_25int_0.exo  on 64 cores run 1..."
START=$(date +%s.%N)
mpiexec -n 64 ./elasticity -problem FSCurrent-NH2 -degree 1 -mesh ./meshes/Tube8_25int_0.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH_hp/"00_TubeRef_0_deg_1_cpu_64_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH_hp/"00_TubeRef_0_deg_1_cpu_64_run_1.log" 

echo "running: FSCurrent-NH2 degree: 1 with Tube8_25int_0.exo  on 64 cores run 2..."
START=$(date +%s.%N)
mpiexec -n 64 ./elasticity -problem FSCurrent-NH2 -degree 1 -mesh ./meshes/Tube8_25int_0.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH_hp/"01_TubeRef_0_deg_1_cpu_64_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH_hp/"01_TubeRef_0_deg_1_cpu_64_run_2.log" 

echo "running: FSCurrent-NH2 degree: 1 with Tube8_25int_0.exo  on 64 cores run 3..."
START=$(date +%s.%N)
mpiexec -n 64 ./elasticity -problem FSCurrent-NH2 -degree 1 -mesh ./meshes/Tube8_25int_0.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH_hp/"02_TubeRef_0_deg_1_cpu_64_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH_hp/"02_TubeRef_0_deg_1_cpu_64_run_3.log" 

echo "running: FSCurrent-NH2 degree: 1 with Tube8_25int_1.exo  on 64 cores run 1..."
START=$(date +%s.%N)
mpiexec -n 64 ./elasticity -problem FSCurrent-NH2 -degree 1 -mesh ./meshes/Tube8_25int_1.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH_hp/"03_TubeRef_1_deg_1_cpu_64_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH_hp/"03_TubeRef_1_deg_1_cpu_64_run_1.log" 

echo "running: FSCurrent-NH2 degree: 1 with Tube8_25int_1.exo  on 64 cores run 2..."
START=$(date +%s.%N)
mpiexec -n 64 ./elasticity -problem FSCurrent-NH2 -degree 1 -mesh ./meshes/Tube8_25int_1.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH_hp/"04_TubeRef_1_deg_1_cpu_64_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH_hp/"04_TubeRef_1_deg_1_cpu_64_run_2.log" 

echo "running: FSCurrent-NH2 degree: 1 with Tube8_25int_1.exo  on 64 cores run 3..."
START=$(date +%s.%N)
mpiexec -n 64 ./elasticity -problem FSCurrent-NH2 -degree 1 -mesh ./meshes/Tube8_25int_1.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH_hp/"05_TubeRef_1_deg_1_cpu_64_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH_hp/"05_TubeRef_1_deg_1_cpu_64_run_3.log" 

echo "running: FSCurrent-NH2 degree: 1 with Tube8_25int_2.exo  on 64 cores run 1..."
START=$(date +%s.%N)
mpiexec -n 64 ./elasticity -problem FSCurrent-NH2 -degree 1 -mesh ./meshes/Tube8_25int_2.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH_hp/"06_TubeRef_2_deg_1_cpu_64_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH_hp/"06_TubeRef_2_deg_1_cpu_64_run_1.log" 

echo "running: FSCurrent-NH2 degree: 1 with Tube8_25int_2.exo  on 64 cores run 2..."
START=$(date +%s.%N)
mpiexec -n 64 ./elasticity -problem FSCurrent-NH2 -degree 1 -mesh ./meshes/Tube8_25int_2.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH_hp/"07_TubeRef_2_deg_1_cpu_64_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH_hp/"07_TubeRef_2_deg_1_cpu_64_run_2.log" 

echo "running: FSCurrent-NH2 degree: 1 with Tube8_25int_2.exo  on 64 cores run 3..."
START=$(date +%s.%N)
mpiexec -n 64 ./elasticity -problem FSCurrent-NH2 -degree 1 -mesh ./meshes/Tube8_25int_2.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH_hp/"08_TubeRef_2_deg_1_cpu_64_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH_hp/"08_TubeRef_2_deg_1_cpu_64_run_3.log" 

echo "running: FSCurrent-NH2 degree: 1 with Tube8_25int_3.exo  on 64 cores run 1..."
START=$(date +%s.%N)
mpiexec -n 64 ./elasticity -problem FSCurrent-NH2 -degree 1 -mesh ./meshes/Tube8_25int_3.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH_hp/"09_TubeRef_3_deg_1_cpu_64_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH_hp/"09_TubeRef_3_deg_1_cpu_64_run_1.log" 

echo "running: FSCurrent-NH2 degree: 1 with Tube8_25int_3.exo  on 64 cores run 2..."
START=$(date +%s.%N)
mpiexec -n 64 ./elasticity -problem FSCurrent-NH2 -degree 1 -mesh ./meshes/Tube8_25int_3.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH_hp/"10_TubeRef_3_deg_1_cpu_64_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH_hp/"10_TubeRef_3_deg_1_cpu_64_run_2.log" 

echo "running: FSCurrent-NH2 degree: 1 with Tube8_25int_3.exo  on 64 cores run 3..."
START=$(date +%s.%N)
mpiexec -n 64 ./elasticity -problem FSCurrent-NH2 -degree 1 -mesh ./meshes/Tube8_25int_3.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH_hp/"11_TubeRef_3_deg_1_cpu_64_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH_hp/"11_TubeRef_3_deg_1_cpu_64_run_3.log" 

echo "running: FSCurrent-NH2 degree: 1 with Tube8_25int_4.exo  on 64 cores run 1..."
START=$(date +%s.%N)
mpiexec -n 64 ./elasticity -problem FSCurrent-NH2 -degree 1 -mesh ./meshes/Tube8_25int_4.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH_hp/"12_TubeRef_4_deg_1_cpu_64_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH_hp/"12_TubeRef_4_deg_1_cpu_64_run_1.log" 

echo "running: FSCurrent-NH2 degree: 1 with Tube8_25int_4.exo  on 64 cores run 2..."
START=$(date +%s.%N)
mpiexec -n 64 ./elasticity -problem FSCurrent-NH2 -degree 1 -mesh ./meshes/Tube8_25int_4.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH_hp/"13_TubeRef_4_deg_1_cpu_64_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH_hp/"13_TubeRef_4_deg_1_cpu_64_run_2.log" 

echo "running: FSCurrent-NH2 degree: 1 with Tube8_25int_4.exo  on 64 cores run 3..."
START=$(date +%s.%N)
mpiexec -n 64 ./elasticity -problem FSCurrent-NH2 -degree 1 -mesh ./meshes/Tube8_25int_4.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH_hp/"14_TubeRef_4_deg_1_cpu_64_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH_hp/"14_TubeRef_4_deg_1_cpu_64_run_3.log" 

echo "running: FSCurrent-NH2 degree: 2 with Tube8_25int_0.exo  on 64 cores run 1..."
START=$(date +%s.%N)
mpiexec -n 64 ./elasticity -problem FSCurrent-NH2 -degree 2 -mesh ./meshes/Tube8_25int_0.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH_hp/"15_TubeRef_0_deg_2_cpu_64_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH_hp/"15_TubeRef_0_deg_2_cpu_64_run_1.log" 

echo "running: FSCurrent-NH2 degree: 2 with Tube8_25int_0.exo  on 64 cores run 2..."
START=$(date +%s.%N)
mpiexec -n 64 ./elasticity -problem FSCurrent-NH2 -degree 2 -mesh ./meshes/Tube8_25int_0.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH_hp/"16_TubeRef_0_deg_2_cpu_64_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH_hp/"16_TubeRef_0_deg_2_cpu_64_run_2.log" 

echo "running: FSCurrent-NH2 degree: 2 with Tube8_25int_0.exo  on 64 cores run 3..."
START=$(date +%s.%N)
mpiexec -n 64 ./elasticity -problem FSCurrent-NH2 -degree 2 -mesh ./meshes/Tube8_25int_0.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH_hp/"17_TubeRef_0_deg_2_cpu_64_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH_hp/"17_TubeRef_0_deg_2_cpu_64_run_3.log" 

echo "running: FSCurrent-NH2 degree: 2 with Tube8_25int_1.exo  on 64 cores run 1..."
START=$(date +%s.%N)
mpiexec -n 64 ./elasticity -problem FSCurrent-NH2 -degree 2 -mesh ./meshes/Tube8_25int_1.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH_hp/"18_TubeRef_1_deg_2_cpu_64_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH_hp/"18_TubeRef_1_deg_2_cpu_64_run_1.log" 

echo "running: FSCurrent-NH2 degree: 2 with Tube8_25int_1.exo  on 64 cores run 2..."
START=$(date +%s.%N)
mpiexec -n 64 ./elasticity -problem FSCurrent-NH2 -degree 2 -mesh ./meshes/Tube8_25int_1.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH_hp/"19_TubeRef_1_deg_2_cpu_64_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH_hp/"19_TubeRef_1_deg_2_cpu_64_run_2.log" 

echo "running: FSCurrent-NH2 degree: 2 with Tube8_25int_1.exo  on 64 cores run 3..."
START=$(date +%s.%N)
mpiexec -n 64 ./elasticity -problem FSCurrent-NH2 -degree 2 -mesh ./meshes/Tube8_25int_1.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH_hp/"20_TubeRef_1_deg_2_cpu_64_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH_hp/"20_TubeRef_1_deg_2_cpu_64_run_3.log" 

echo "running: FSCurrent-NH2 degree: 2 with Tube8_25int_2.exo  on 64 cores run 1..."
START=$(date +%s.%N)
mpiexec -n 64 ./elasticity -problem FSCurrent-NH2 -degree 2 -mesh ./meshes/Tube8_25int_2.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH_hp/"21_TubeRef_2_deg_2_cpu_64_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH_hp/"21_TubeRef_2_deg_2_cpu_64_run_1.log" 

echo "running: FSCurrent-NH2 degree: 2 with Tube8_25int_2.exo  on 64 cores run 2..."
START=$(date +%s.%N)
mpiexec -n 64 ./elasticity -problem FSCurrent-NH2 -degree 2 -mesh ./meshes/Tube8_25int_2.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH_hp/"22_TubeRef_2_deg_2_cpu_64_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH_hp/"22_TubeRef_2_deg_2_cpu_64_run_2.log" 

echo "running: FSCurrent-NH2 degree: 2 with Tube8_25int_2.exo  on 64 cores run 3..."
START=$(date +%s.%N)
mpiexec -n 64 ./elasticity -problem FSCurrent-NH2 -degree 2 -mesh ./meshes/Tube8_25int_2.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH_hp/"23_TubeRef_2_deg_2_cpu_64_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH_hp/"23_TubeRef_2_deg_2_cpu_64_run_3.log" 

echo "running: FSCurrent-NH2 degree: 2 with Tube8_25int_3.exo  on 64 cores run 1..."
START=$(date +%s.%N)
mpiexec -n 64 ./elasticity -problem FSCurrent-NH2 -degree 2 -mesh ./meshes/Tube8_25int_3.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH_hp/"24_TubeRef_3_deg_2_cpu_64_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH_hp/"24_TubeRef_3_deg_2_cpu_64_run_1.log" 

echo "running: FSCurrent-NH2 degree: 2 with Tube8_25int_3.exo  on 64 cores run 2..."
START=$(date +%s.%N)
mpiexec -n 64 ./elasticity -problem FSCurrent-NH2 -degree 2 -mesh ./meshes/Tube8_25int_3.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH_hp/"25_TubeRef_3_deg_2_cpu_64_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH_hp/"25_TubeRef_3_deg_2_cpu_64_run_2.log" 

echo "running: FSCurrent-NH2 degree: 2 with Tube8_25int_3.exo  on 64 cores run 3..."
START=$(date +%s.%N)
mpiexec -n 64 ./elasticity -problem FSCurrent-NH2 -degree 2 -mesh ./meshes/Tube8_25int_3.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH_hp/"26_TubeRef_3_deg_2_cpu_64_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH_hp/"26_TubeRef_3_deg_2_cpu_64_run_3.log" 

echo "running: FSCurrent-NH2 degree: 3 with Tube8_25int_0.exo  on 64 cores run 1..."
START=$(date +%s.%N)
mpiexec -n 64 ./elasticity -problem FSCurrent-NH2 -degree 3 -mesh ./meshes/Tube8_25int_0.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH_hp/"27_TubeRef_0_deg_3_cpu_64_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH_hp/"27_TubeRef_0_deg_3_cpu_64_run_1.log" 

echo "running: FSCurrent-NH2 degree: 3 with Tube8_25int_0.exo  on 64 cores run 2..."
START=$(date +%s.%N)
mpiexec -n 64 ./elasticity -problem FSCurrent-NH2 -degree 3 -mesh ./meshes/Tube8_25int_0.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH_hp/"28_TubeRef_0_deg_3_cpu_64_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH_hp/"28_TubeRef_0_deg_3_cpu_64_run_2.log" 

echo "running: FSCurrent-NH2 degree: 3 with Tube8_25int_0.exo  on 64 cores run 3..."
START=$(date +%s.%N)
mpiexec -n 64 ./elasticity -problem FSCurrent-NH2 -degree 3 -mesh ./meshes/Tube8_25int_0.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH_hp/"29_TubeRef_0_deg_3_cpu_64_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH_hp/"29_TubeRef_0_deg_3_cpu_64_run_3.log" 

echo "running: FSCurrent-NH2 degree: 3 with Tube8_25int_1.exo  on 64 cores run 1..."
START=$(date +%s.%N)
mpiexec -n 64 ./elasticity -problem FSCurrent-NH2 -degree 3 -mesh ./meshes/Tube8_25int_1.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH_hp/"30_TubeRef_1_deg_3_cpu_64_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH_hp/"30_TubeRef_1_deg_3_cpu_64_run_1.log" 

echo "running: FSCurrent-NH2 degree: 3 with Tube8_25int_1.exo  on 64 cores run 2..."
START=$(date +%s.%N)
mpiexec -n 64 ./elasticity -problem FSCurrent-NH2 -degree 3 -mesh ./meshes/Tube8_25int_1.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH_hp/"31_TubeRef_1_deg_3_cpu_64_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH_hp/"31_TubeRef_1_deg_3_cpu_64_run_2.log" 

echo "running: FSCurrent-NH2 degree: 3 with Tube8_25int_1.exo  on 64 cores run 3..."
START=$(date +%s.%N)
mpiexec -n 64 ./elasticity -problem FSCurrent-NH2 -degree 3 -mesh ./meshes/Tube8_25int_1.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH_hp/"32_TubeRef_1_deg_3_cpu_64_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH_hp/"32_TubeRef_1_deg_3_cpu_64_run_3.log" 

echo "running: FSCurrent-NH2 degree: 3 with Tube8_25int_2.exo  on 64 cores run 1..."
START=$(date +%s.%N)
mpiexec -n 64 ./elasticity -problem FSCurrent-NH2 -degree 3 -mesh ./meshes/Tube8_25int_2.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH_hp/"33_TubeRef_2_deg_3_cpu_64_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH_hp/"33_TubeRef_2_deg_3_cpu_64_run_1.log" 

echo "running: FSCurrent-NH2 degree: 3 with Tube8_25int_2.exo  on 64 cores run 2..."
START=$(date +%s.%N)
mpiexec -n 64 ./elasticity -problem FSCurrent-NH2 -degree 3 -mesh ./meshes/Tube8_25int_2.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH_hp/"34_TubeRef_2_deg_3_cpu_64_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH_hp/"34_TubeRef_2_deg_3_cpu_64_run_2.log" 

echo "running: FSCurrent-NH2 degree: 3 with Tube8_25int_2.exo  on 64 cores run 3..."
START=$(date +%s.%N)
mpiexec -n 64 ./elasticity -problem FSCurrent-NH2 -degree 3 -mesh ./meshes/Tube8_25int_2.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH_hp/"35_TubeRef_2_deg_3_cpu_64_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH_hp/"35_TubeRef_2_deg_3_cpu_64_run_3.log" 

echo "running: FSCurrent-NH2 degree: 3 with Tube8_25int_3.exo  on 64 cores run 1..."
START=$(date +%s.%N)
mpiexec -n 64 ./elasticity -problem FSCurrent-NH2 -degree 3 -mesh ./meshes/Tube8_25int_3.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH_hp/"36_TubeRef_3_deg_3_cpu_64_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH_hp/"36_TubeRef_3_deg_3_cpu_64_run_1.log" 

echo "running: FSCurrent-NH2 degree: 3 with Tube8_25int_3.exo  on 64 cores run 2..."
START=$(date +%s.%N)
mpiexec -n 64 ./elasticity -problem FSCurrent-NH2 -degree 3 -mesh ./meshes/Tube8_25int_3.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH_hp/"37_TubeRef_3_deg_3_cpu_64_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH_hp/"37_TubeRef_3_deg_3_cpu_64_run_2.log" 

echo "running: FSCurrent-NH2 degree: 3 with Tube8_25int_3.exo  on 64 cores run 3..."
START=$(date +%s.%N)
mpiexec -n 64 ./elasticity -problem FSCurrent-NH2 -degree 3 -mesh ./meshes/Tube8_25int_3.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH_hp/"38_TubeRef_3_deg_3_cpu_64_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH_hp/"38_TubeRef_3_deg_3_cpu_64_run_3.log" 

echo "running: FSCurrent-NH2 degree: 4 with Tube8_25int_0.exo  on 64 cores run 1..."
START=$(date +%s.%N)
mpiexec -n 64 ./elasticity -problem FSCurrent-NH2 -degree 4 -mesh ./meshes/Tube8_25int_0.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH_hp/"39_TubeRef_0_deg_4_cpu_64_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH_hp/"39_TubeRef_0_deg_4_cpu_64_run_1.log" 

echo "running: FSCurrent-NH2 degree: 4 with Tube8_25int_0.exo  on 64 cores run 2..."
START=$(date +%s.%N)
mpiexec -n 64 ./elasticity -problem FSCurrent-NH2 -degree 4 -mesh ./meshes/Tube8_25int_0.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH_hp/"40_TubeRef_0_deg_4_cpu_64_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH_hp/"40_TubeRef_0_deg_4_cpu_64_run_2.log" 

echo "running: FSCurrent-NH2 degree: 4 with Tube8_25int_0.exo  on 64 cores run 3..."
START=$(date +%s.%N)
mpiexec -n 64 ./elasticity -problem FSCurrent-NH2 -degree 4 -mesh ./meshes/Tube8_25int_0.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH_hp/"41_TubeRef_0_deg_4_cpu_64_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH_hp/"41_TubeRef_0_deg_4_cpu_64_run_3.log" 

echo "running: FSCurrent-NH2 degree: 4 with Tube8_25int_1.exo  on 64 cores run 1..."
START=$(date +%s.%N)
mpiexec -n 64 ./elasticity -problem FSCurrent-NH2 -degree 4 -mesh ./meshes/Tube8_25int_1.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH_hp/"42_TubeRef_1_deg_4_cpu_64_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH_hp/"42_TubeRef_1_deg_4_cpu_64_run_1.log" 

echo "running: FSCurrent-NH2 degree: 4 with Tube8_25int_1.exo  on 64 cores run 2..."
START=$(date +%s.%N)
mpiexec -n 64 ./elasticity -problem FSCurrent-NH2 -degree 4 -mesh ./meshes/Tube8_25int_1.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH_hp/"43_TubeRef_1_deg_4_cpu_64_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH_hp/"43_TubeRef_1_deg_4_cpu_64_run_2.log" 

echo "running: FSCurrent-NH2 degree: 4 with Tube8_25int_1.exo  on 64 cores run 3..."
START=$(date +%s.%N)
mpiexec -n 64 ./elasticity -problem FSCurrent-NH2 -degree 4 -mesh ./meshes/Tube8_25int_1.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH_hp/"44_TubeRef_1_deg_4_cpu_64_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH_hp/"44_TubeRef_1_deg_4_cpu_64_run_3.log" 

echo "running: FSCurrent-NH2 degree: 4 with Tube8_25int_2.exo  on 64 cores run 1..."
START=$(date +%s.%N)
mpiexec -n 64 ./elasticity -problem FSCurrent-NH2 -degree 4 -mesh ./meshes/Tube8_25int_2.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH_hp/"45_TubeRef_2_deg_4_cpu_64_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH_hp/"45_TubeRef_2_deg_4_cpu_64_run_1.log" 

echo "running: FSCurrent-NH2 degree: 4 with Tube8_25int_2.exo  on 64 cores run 2..."
START=$(date +%s.%N)
mpiexec -n 64 ./elasticity -problem FSCurrent-NH2 -degree 4 -mesh ./meshes/Tube8_25int_2.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH_hp/"46_TubeRef_2_deg_4_cpu_64_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH_hp/"46_TubeRef_2_deg_4_cpu_64_run_2.log" 

echo "running: FSCurrent-NH2 degree: 4 with Tube8_25int_2.exo  on 64 cores run 3..."
START=$(date +%s.%N)
mpiexec -n 64 ./elasticity -problem FSCurrent-NH2 -degree 4 -mesh ./meshes/Tube8_25int_2.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH_hp/"47_TubeRef_2_deg_4_cpu_64_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH_hp/"47_TubeRef_2_deg_4_cpu_64_run_3.log" 

echo "running: FSCurrent-NH2 degree: 4 with Tube8_25int_3.exo  on 64 cores run 1..."
START=$(date +%s.%N)
mpiexec -n 64 ./elasticity -problem FSCurrent-NH2 -degree 4 -mesh ./meshes/Tube8_25int_3.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH_hp/"48_TubeRef_3_deg_4_cpu_64_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH_hp/"48_TubeRef_3_deg_4_cpu_64_run_1.log" 

echo "running: FSCurrent-NH2 degree: 4 with Tube8_25int_3.exo  on 64 cores run 2..."
START=$(date +%s.%N)
mpiexec -n 64 ./elasticity -problem FSCurrent-NH2 -degree 4 -mesh ./meshes/Tube8_25int_3.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH_hp/"49_TubeRef_3_deg_4_cpu_64_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH_hp/"49_TubeRef_3_deg_4_cpu_64_run_2.log" 

echo "running: FSCurrent-NH2 degree: 4 with Tube8_25int_3.exo  on 64 cores run 3..."
START=$(date +%s.%N)
mpiexec -n 64 ./elasticity -problem FSCurrent-NH2 -degree 4 -mesh ./meshes/Tube8_25int_3.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH_hp/"50_TubeRef_3_deg_4_cpu_64_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH_hp/"50_TubeRef_3_deg_4_cpu_64_run_3.log" 

echo "running: FSCurrent-NH2 degree: 4 with Tube8_25int_4.exo  on 64 cores run 1..."
START=$(date +%s.%N)
mpiexec -n 64 ./elasticity -problem FSCurrent-NH2 -degree 4 -mesh ./meshes/Tube8_25int_4.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH_hp/"51_TubeRef_4_deg_4_cpu_64_run_1.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH_hp/"51_TubeRef_4_deg_4_cpu_64_run_1.log" 

echo "running: FSCurrent-NH2 degree: 4 with Tube8_25int_4.exo  on 64 cores run 2..."
START=$(date +%s.%N)
mpiexec -n 64 ./elasticity -problem FSCurrent-NH2 -degree 4 -mesh ./meshes/Tube8_25int_4.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH_hp/"52_TubeRef_4_deg_4_cpu_64_run_2.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH_hp/"52_TubeRef_4_deg_4_cpu_64_run_2.log" 

echo "running: FSCurrent-NH2 degree: 4 with Tube8_25int_4.exo  on 64 cores run 3..."
START=$(date +%s.%N)
mpiexec -n 64 ./elasticity -problem FSCurrent-NH2 -degree 4 -mesh ./meshes/Tube8_25int_4.exo -E 6.90e+10 -nu 0.3 -bc_clamp 998,999 -bc_clamp_998_translate 0,-20,0 -num_steps 25 -snes_linesearch_type cp -snes_rtol 1e-07 -log_view  | grep "Problem Name\|Strain Energy\|SNES Solve Time\|DoFs/Sec in SNES\|Total KSP Iterations\|Global nodes\|Time (sec)\|noether with" > log_files_NH_hp/"53_TubeRef_4_deg_4_cpu_64_run_3.log" 
command
END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo "script run time: "${DIFF} >> log_files_NH_hp/"53_TubeRef_4_deg_4_cpu_64_run_3.log" 


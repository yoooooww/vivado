@echo off
REM ****************************************************************************
REM Vivado (TM) v2023.2.1 (64-bit)
REM
REM Filename    : simulate.bat
REM Simulator   : AMD Vivado Simulator
REM Description : Script for simulating the design by launching the simulator
REM
REM Generated by Vivado on Thu Apr 11 19:40:35 +0100 2024
REM SW Build 4081461 on Thu Dec 14 12:24:51 MST 2023
REM
REM Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
REM Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
REM
REM usage: simulate.bat
REM
REM ****************************************************************************
REM simulate design
echo "xsim Carry_testbench_func_impl -key {Post-Implementation:sim_1:Functional:Carry_testbench} -tclbatch Carry_testbench.tcl -log simulate.log"
call xsim  Carry_testbench_func_impl -key {Post-Implementation:sim_1:Functional:Carry_testbench} -tclbatch Carry_testbench.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0

@echo off
REM ==============================
REM Evaluate DeepSignDB, Stylus Scenario
REM ==============================

for %%s in (111 222 333 444 555) do (
    echo %%s
    python evaluate_DeepSignDB_stylus.py --epoch End --seed %%s --train-shot-g 4 --rf
)

REM Using 4 templates
python verify_stylus_all.py --train-shot-g 4 --epoch End

REM Using 1 template
python verify_stylus_all.py --train-shot-g 1 --epoch End

pause

<<<<<<< HEAD
@echo off
rem Simple script (for Windows) that runs all the regression tests expected to pass.
rem It leaves a memo file regrtest_memo.txt that will be useful in a bug report.

setlocal
set JY_PATH=%~dp0
@echo on
%JY_PATH%jython.exe -m test.regrtest -e -m regrtest_memo.txt
=======
@echo off
rem Simple script (for Windows) that runs all the regression tests expected to pass.
rem It leaves a memo file regrtest_memo.txt that will be useful in a bug report.

setlocal
set JY_PATH=%~dp0
@echo on
%JY_PATH%jython.exe -m test.regrtest -e -m regrtest_memo.txt
>>>>>>> 7c576b48bd08b962534371c9ba4cef2e2c410b25

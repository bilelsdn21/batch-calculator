@echo off
REM ============================================
REM   SIMPLE CALCULATOR  (Windows Batch)
REM   My first batch-scripting project.
REM ============================================

:menu
cls
echo ========================================
echo         SIMPLE CALCULATOR v1.0
echo ========================================
echo.
echo   1. Add
echo   2. Subtract
echo   3. Multiply
echo   4. Divide
echo   5. Exit
echo.
set /p choice="Enter choice (1-5): "

if "%choice%"=="1" goto add
if "%choice%"=="2" goto subtract
if "%choice%"=="3" goto multiply
if "%choice%"=="4" goto divide
if "%choice%"=="5" goto end
echo Invalid choice. Try again.
pause
goto menu

:add
set /p num1="Enter first number: "
set /p num2="Enter second number: "
set /a result=%num1%+%num2%
echo Result: %num1% + %num2% = %result%
echo.
pause
goto menu

:subtract
set /p num1="Enter first number: "
set /p num2="Enter second number: "
set /a result=%num1%-%num2%
echo Result: %num1% - %num2% = %result%
echo.
pause
goto menu

:multiply
set /p num1="Enter first number: "
set /p num2="Enter second number: "
set /a result=%num1%*%num2%
echo Result: %num1% * %num2% = %result%
echo.
pause
goto menu

:divide
set /p num1="Enter first number: "
set /p num2="Enter second number: "
if "%num2%"=="0" (
    echo Error: Cannot divide by zero!
    pause
    goto menu
)
set /a result=%num1%/%num2%
echo Result: %num1% / %num2% = %result%
echo.
pause
goto menu

:end
echo Thank you for using Calculator!
exit /b 0

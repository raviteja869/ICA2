@echo off

REM Simple script to test the Flask application's home route with retry logic

echo Running integration test...

REM Function to test the home route
:TestHomeRoute
curl -f http://localhost:5000/
if %errorlevel% neq 0 (
    goto RetryTest
)

echo Integration test passed successfully
exit /b 0

:RetryTest
REM Wait for 10 seconds before retrying
ping localhost -n 11 >nul

REM Retry the home route test
curl -f http://localhost:5000/
if %errorlevel% neq 0 (
    echo Home route test failed
    exit /b 1
)

echo Integration test passed successfully
exit /b 0

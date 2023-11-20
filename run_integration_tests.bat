@echo off

REM Simple script to test the Flask application's home route

echo Running integration test...

REM Test the home route
curl -f http://localhost:5000/
if %errorlevel% neq 0 (
    echo Home route test failed
    exit /b 1
)

echo Integration test passed successfully

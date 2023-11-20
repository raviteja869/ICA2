@echo off

REM Simple script to test the Flask application endpoints

echo Running integration tests...

REM Test the home route
curl -f http://localhost:5000/
if %errorlevel% neq 0 (
    echo Home route test failed
    exit /b 1
)

REM Test the plot route
curl -f -X POST -H "Content-Type: application/json" ^
     -d "{\"xmin\": -2.0, \"xmax\": 1.0, \"ymin\": -1.5, \"ymax\": 1.5}" ^
     http://localhost:5000/plot
if %errorlevel% neq 0 (
    echo Plot route test failed
    exit /b 1
)

echo Integration tests passed successfully

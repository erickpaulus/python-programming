@echo off

REM Specify the environment name
set ENV_NAME=myProjectEnv

REM Step 1: Check if the Conda environment already exists
conda env list | findstr /r "\b%ENV_NAME%\b" >nul 2>&1
if %errorlevel% equ 0 (
    echo Environment '%ENV_NAME%' already exists. Skipping creation.
) else (
    echo Creating Conda environment '%ENV_NAME%'...
    conda create --name %ENV_NAME% python=3.12 -y
)

REM Step 2: Activate the environment
call activate %ENV_NAME%

REM Step 3: Install dependencies from requirements.txt
if exist requirements.txt (
    echo Installing dependencies from requirements.txt...
    pip install -r requirements.txt
) else (
    echo No requirements.txt file found. Skipping dependency installation.
)

REM Step 4: Confirm setup completion
echo Environment setup complete and all requirements installed.
pause

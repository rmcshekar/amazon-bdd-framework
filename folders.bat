@echo off

REM Create the main project folder
mkdir "MyProject"

REM Change to the MyProject directory
pushd "MyProject"

REM Create top-level files
echo. > pom.xml  REM Create empty pom.xml
echo. > README.md REM Create empty README.md
echo. > testng.xml REM Create empty testng.xml

REM Create the src directory
mkdir "src"
pushd "src"

REM Create main directory and subdirectories (if needed)
mkdir "main"
pushd "main"
mkdir "java"
mkdir "resources"
popd

REM Create test directory and subdirectories
mkdir "test"
pushd "test"
mkdir "java"
pushd "java"
mkdir "stepdefinitions"
echo. > stepdefinitions\AmazonSteps.java REM Create empty AmazonSteps.java
mkdir "runners"
echo. > runners\TestRunner.java REM Create empty TestRunner.java
mkdir "hooks"
echo. > hooks\Hooks.java REM Create empty Hooks.java
mkdir "utils"
echo. > utils\WebDriverManager.java REM Create empty WebDriverManager.java
echo. > utils\ConfigReader.java REM Create empty ConfigReader.java
popd
mkdir "resources"
pushd "resources"
mkdir "features"
echo. > features\amazon.feature REM Create empty amazon.feature
mkdir "config"
echo. > config\config.properties REM Create empty config.properties
popd
popd
popd

REM Create the target directory and subdirectories
mkdir "target"
pushd "target"
mkdir "cucumber-reports"
mkdir "allure-results"
popd

REM Return to the original directory
popd

echo Folder and file structure created successfully in "MyProject"
pause
@echo off
echo Calypso for Cozmo: preparing for Windows install.
:: Copyright 2017,2018 Visionary Machines LLC.

:: Make sure our working directory is outside the Calypso tree.
pushd %USERPROFILE%\AppData\Local\Temp

:: Delete any old installer lying around.
set installer_file="%USERPROFILE%\AppData\Local\Temp\calypso-windows-installer-china.ps1"
if exist %installer_file% del %installer_file%

:: Fetch the latest installer.
echo Retrieving the installer.

set url=https://cloud.wholerengroup.com/external/directly/ReadyAI/calypso-windows-installer-china.ps1
echo -url- %url%

:: Note: must use single quotes in next line; double quotes don't work.
set fetch_cmd=(new-object system.net.webclient).downloadfile('%url%','%installer_file%')

powershell -command %fetch_cmd%

if not exist %installer_file% (
  echo ***
  echo ***
  echo *** Fatal error: could not fetch the Calypso installer.
  echo *** Check your network connectivity.
  echo ***
  echo ***
  popd
  exit /b
)

:: Run the installer.
echo Running the installer.
powershell -noexit -executionpolicy unrestricted -file %installer_file%

popd

pause
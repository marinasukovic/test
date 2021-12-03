@echo off

Rem extract jar from Nexus
set file1=ojdbc8test1.jar
set file2=test.jar 
set path=C:\Windows\System32\config\systemprofile\AppData\Local\Jenkins\.jenkins\workspace\test
%SYSTEMROOT%\System32\WindowsPowerShell\v1.0\powershell.exe -NoLogo -Command "Invoke-WebRequest -Uri 'http://127.0.0.1:8081/repository/maven-central-repository/com/oracle/ojdbc8/12.2.0.1/ojdbc8-12.2.0.1.jar' -Outfile '%path%/ojdbc8test1.jar' -UseBasicParsing -Credential (New-Object PSCredential('sukovicm', (ConvertTo-SecureString -AsPlainText -Force -String 'lamperija1M!')))"
cd %path%
echo checking directory structure
for %%i in (%file1% %file2%) do if not exist "%%i" echo %%i Must be downloaded & goto :EOF
echo Successful Installation

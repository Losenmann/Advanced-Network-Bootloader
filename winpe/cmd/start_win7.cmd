@echo off
wpeinit
echo Connecting VPN...
rasdial "Skynet" winpe megapassword1
echo Connecting SMB...
net use \\192.168.25.2\boot /user:install install
\\192.168.25.2\boot\win7\setup.exe
cmd /k
@echo on
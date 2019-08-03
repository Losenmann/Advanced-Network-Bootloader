wpeinit
echo Connecting SMB...
net use \\192.168.0.2\boot /user:install install
(\\192.168.0.2\Boot\windows\win7\setup.exe && echo SUCCESS) || echo Error Connecting
cmd /k
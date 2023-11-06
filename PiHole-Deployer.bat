echo Starting PiHole Container
docker compose -f C:\Users\redne\OneDrive\Desktop\PiHole-Deployer.yml up -d
echo PiHole Container up, access at http://localhost:8080/admin
echo Modifying DNS Settings
netsh interface ipv4 set dns "Ethernet" static 127.0.0.1
pause
docker stop pihole
echo Resetting DNS to utilize dhcp
netsh interface ipv4 set dns "Ethernet" dhcp
timeout /t 10
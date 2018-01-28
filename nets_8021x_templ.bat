@echo on
sc config dot3svc start=auto
net start dot3svc
netsh lan delete profile interface=Ethernet
netsh lan add profile filename=%userprofile%\desktop\Ethernet.xml
netsh interface ipv6 set privacy state=enabled
netsh interface ipv6 set global randomizeidentifiers=disabled
netsh interface ipv6 set dns "Ethernet" static %your_ipv6_dns%
pause
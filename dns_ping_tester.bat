@ECHO OFF
ECHO ===============================================
SET "min_ms=9999"
SET "best_server="
CALL:IP 8.8.8.8
CALL:ComparePing %ms% "Google 8.8.8.8"
ECHO * Google 8.8.8.8:               %ms%
CALL:IP 8.8.4.4
CALL:ComparePing %ms% "Google 8.8.4.4"
ECHO * Google 8.8.4.4:               %ms%
ECHO ===============================================
CALL:IP 76.76.2.0
CALL:ComparePing %ms% "Control D 76.76.2.0"
ECHO * Control D    76.76.2.0:       %ms%
CALL:IP 76.76.10.0
CALL:ComparePing %ms% "Quad9 149.112.112.112"
ECHO * Control D 76.76.10.0:         %ms%
ECHO ===============================================
CALL:IP 9.9.9.9
CALL:ComparePing %ms% "Quad9 9.9.9.9"
ECHO * Quad9 9.9.9.9:                %ms%
CALL:IP 149.112.112.112
CALL:ComparePing %ms% "Quad9 149.112.112.112"
ECHO * Quad9 149.112.112.112:        %ms%
ECHO ===============================================
CALL:IP 208.67.222.222    
CALL:ComparePing %ms% "OpenDNS Home 208.67.222.222"
ECHO * OpenDNS Home 208.67.222.222:  %ms%
CALL:IP 208.67.220.220
CALL:ComparePing %ms% "OpenDNS 208.67.220.220"
ECHO * OpenDNS 208.67.220.220:       %ms%
ECHO ===============================================
CALL:IP 1.1.1.1
CALL:ComparePing %ms% "Cloudflare 1.1.1.1"
ECHO * Cloudflare 1.1.1.1:           %ms%
CALL:IP 1.0.0.1
CALL:ComparePing %ms% "Cloudflare 1.0.0.1"
ECHO * Cloudflare 1.0.0.1:           %ms%
ECHO ===============================================
CALL:IP 94.140.14.14
CALL:ComparePing %ms% "AdGuard DNS 94.140.14.14"
ECHO * AdGuard DNS 94.140.14.14:     %ms%
CALL:IP 94.140.15.15
CALL:ComparePing %ms% "AdGuard DNS 94.140.15.15"
ECHO * AdGuard DNS 94.140.15.15:     %ms%
ECHO ===============================================
CALL:IP 185.228.168.9
CALL:ComparePing %ms% "CleanBrowsing 185.228.168.9"
ECHO * CleanBrowsing 185.228.168.9:  %ms%
CALL:ComparePing %ms% "CleanBrowsing 185.228.169.9"
CALL:IP 185.228.169.9
ECHO * CleanBrowsing 185.228.169.9:  %ms%
ECHO ===============================================
CALL:IP 76.76.19.19
CALL:ComparePing %ms% "Alternate DNS 76.76.19.19"
ECHO * Alternate DNS 76.76.19.19:    %ms%
CALL:IP 76.223.122.150
CALL:ComparePing %ms% "Alternate DNS 76.223.122.150"
  
PAUSE
GOTO:EOF

:IP
SET ms=# RTO #
FOR /F "tokens=4 delims==" %%i IN ('ping.exe -n 1 %1 ^| FIND "ms"') DO SET ms=%%i
GOTO:EOF

:ComparePing
IF "%1" LSS "%min_ms%" (
    SET "min_ms=%1"
    SET "best_server=%~2"
)
GOTO:EOF

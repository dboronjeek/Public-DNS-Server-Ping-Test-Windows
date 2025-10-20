■ DNS Ping Tester (Batch Script)
A simple Windows batch script that pings multiple popular DNS servers, averages the ping results,
and displays the fastest servers ranked from best to worst. Ideal for quickly finding which DNS
resolver performs best on your network.
■ Features
- Pings each DNS server 10 times and calculates the average ping
- Automatically compares results to find the best server
- Displays a ranked list (fastest → slowest)
- Repeats automatically — just press any key to run another test
- Works entirely offline using native Windows ping and sort commands
■ Usage
1. Download or clone the repository. 2. Run the script by double-clicking the .bat file or typing
`dns-tester.bat` in Command Prompt. 3. View the results with ranked average pings.
■ DNS Servers Tested
Provider IP Address(es)
Google DNS 8.8.8.8 / 8.8.4.4
Cloudflare 1.1.1.1 / 1.0.0.1
Quad9 9.9.9.9 / 149.112.112.112
OpenDNS 208.67.222.222 / 208.67.220.220
AdGuard DNS 94.140.14.14 / 94.140.15.15
Control D 76.76.2.0 / 76.76.10.0
CleanBrowsing 185.228.168.9 / 185.228.169.9
Alternate DNS 76.76.19.19 / 76.223.122.150
■■ Requirements
- Windows 7 / 10 / 11 - Command Prompt (cmd.exe) - Internet connection (to ping DNS servers)
■ License
This project is released under the MIT License.
■■■ Author
Created by YOUR NAME. If you find it helpful, give it a ■ on GitHub!

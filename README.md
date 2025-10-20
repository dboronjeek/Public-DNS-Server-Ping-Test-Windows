# DNS Ping Tester

A simple Windows batch script to test the latency of various public DNS servers and identify the fastest one for your connection.

---

## Table of Contents

* [Overview](#overview)
* [Supported DNS Servers](#supported-dns-servers)
* [Usage](#usage)
* [How It Works](#how-it-works)
* [Requirements](#requirements)
* [License](#license)

---

## Overview

This script pings several popular public DNS servers and compares their response times (latency in milliseconds). It displays each server's ping and highlights the server with the lowest latency.

---

## Supported DNS Servers

| Provider      | IP Address                     |
| ------------- | ------------------------------ |
| Google        | 8.8.8.8, 8.8.4.4               |
| Control D     | 76.76.2.0, 76.76.10.0          |
| Quad9         | 9.9.9.9, 149.112.112.112       |
| OpenDNS       | 208.67.222.222, 208.67.220.220 |
| Cloudflare    | 1.1.1.1, 1.0.0.1               |
| AdGuard       | 94.140.14.14, 94.140.15.15     |
| CleanBrowsing | 185.228.168.9, 185.228.169.9   |
| Alternate DNS | 76.76.19.19, 76.223.122.150    |

---

## Usage

1. Download the batch script file (`dns_ping_tester.bat`).
2. Double-click to run, or execute it from Command Prompt:

```bat
dns_ping_tester.bat
```

3. The script will output the ping results for each DNS server and indicate which server has the lowest latency.

Example output:

```
===============================================
* Google 8.8.8.8:               24ms
* Google 8.8.4.4:               28ms
...
* Cloudflare 1.1.1.1:           18ms
* Cloudflare 1.0.0.1:           20ms
===============================================
Fastest server: Cloudflare 1.1.1.1 with 18ms
```

---

## How It Works

1. The script defines a variable `min_ms` to track the minimum ping latency and `best_server` to track the corresponding DNS server.
2. It uses the `ping` command to send a single ICMP request (`-n 1`) to each server.
3. The response time is extracted from the ping output using the `FOR /F` loop.
4. The `ComparePing` subroutine updates the `min_ms` and `best_server` if the current server is faster.
5. Finally, it prints all results and the fastest server.

**Key Functions:**

* `:IP <IP_ADDRESS>` → Pings the server and stores the latency in `ms`.
* `:ComparePing <ms> <SERVER_NAME>` → Compares the latency and updates the fastest server.

---

## Requirements

* Windows OS
* Command Prompt (cmd.exe)

No additional software or dependencies are required.

---

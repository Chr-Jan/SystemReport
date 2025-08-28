SystemReport is a simple Bash script that generates a system report with information about CPU, RAM, disk usage, uptime, and network details.  
It is useful as a lightweight alternative to tools like neofetch.

Installation:
1. Save the script as:
   systemAna.sh
2. Make it executable:
   chmod +x systemAna.sh

Usage:
Run the script in your terminal:
   ./systemAna.sh

Example output:

```bash
=====================================
  System Report for my-hostname
=====================================
```

OS:      Ubuntu 22.04.4 LTS
Kernel:  6.5.0-41-generic
Arch:    x86_64
Uptime:  up 3 hours, 21 minutes

CPU:     Intel(R) Core(TM) i7-8650U CPU @ 1.90GHz
Cores:   8

Memory:  16G total, 10G available

Disk (/): 45G used, 120G available

IP:      192.168.1.42

=====================================

Features:
- Displays OS, kernel and architecture
- CPU model and number of cores
- RAM total and available
- Disk usage on the root partition
- Uptime in a readable format
- Local IP address

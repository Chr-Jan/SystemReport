#!/bin/bash
# Simple system analysis script

echo "====================================="
echo "  System Report for $(hostname)"
echo "====================================="
echo ""

# OS + Kernel
echo "OS:      $(grep PRETTY_NAME /etc/os-release | cut -d= -f2- | tr -d '"')"
echo "Kernel:  $(uname -r)"
echo "Arch:    $(uname -m)"
echo "Uptime:  $(uptime -p)"
echo ""

# CPU info
echo "CPU:     $(lscpu | awk -F: '/Model name/ {print $2}' | xargs)"
echo "Cores:   $(nproc)"
echo ""

# Memory info
mem_total=$(free -h | awk '/Mem:/ {print $2}')
mem_avail=$(free -h | awk '/Mem:/ {print $7}')
echo "Memory:  ${mem_total} total, ${mem_avail} available"
echo ""

# Disk info (root partition)
disk_used=$(df -h / | awk 'NR==2 {print $3}')
disk_avail=$(df -h / | awk 'NR==2 {print $4}')
echo "Disk (/): ${disk_used} used, ${disk_avail} available"
echo ""

# Network info
echo "IP:      $(hostname -I | awk '{print $1}')"
echo ""

echo "====================================="

#!/bin/bash

echo "=== SERVER STATS ==="

# Total CPU usage
echo -e "\n🧠 CPU Usage:"
top -bn1 | grep "Cpu(s)"

# Total memory usage
echo -e "\n💾 Memory Usage:"
free -h

# Total disk usage
echo -e "\n🗄️ Disk Usage:"
df -h /

# Top 5 processes by CPU
echo -e "\n🔥 Top 5 Processes by CPU:"
ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head -n 6

# Top 5 processes by Memory
echo -e "\n💡 Top 5 Processes by Memory:"
ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%mem | head -n 6

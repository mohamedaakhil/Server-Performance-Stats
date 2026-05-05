#!/bin/bash

# server-stats.sh - Basic Server Performance Analysis

echo "--- Server Stats: $(date) ---"

# 1. Total CPU Usage
# Formula: 100 - idle time
cpu_usage=$(top -bn1 | grep "Cpu(s)" | awk '{print 100 - $8}')
echo "Total CPU Usage: ${cpu_usage}%"

# 2. Total Memory Usage (Free vs Used with Percentage)
echo "Total Memory Usage:"
free -m | awk 'NR==2{printf "  Used: %sMB, Free: %sMB (%.2f%%)\n", $3, $4, $3*100/$2}'

# 3. Total Disk Usage (Free vs Used with Percentage)
echo "Total Disk Usage:"
df -h --total | grep 'total' | awk '{printf "  Used: %s, Free: %s (%s)\n", $3, $4, $5}'

# 4. Top 5 Processes by CPU Usage
echo "Top 5 Processes by CPU Usage:"
ps -eo pid,ppid,cmd,%cpu --sort=-%cpu | head -n 6 | awk 'NR>1'

# 5. Top 5 Processes by Memory Usage
echo "Top 5 Processes by Memory Usage:"
ps -eo pid,ppid,cmd,%mem --sort=-%mem | head -n 6 | awk 'NR>1'

echo "---------------------------------------"

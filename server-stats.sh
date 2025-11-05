#!/home/paperpegasus/.nix-profile/bin/bash
# This a script to read and display server stats
: '
The basic function of this script is to display
 - Os version
 - Uptime
 - Total CPU usage
 - Total Memory usage (Free vs Used including percentage)
 - Total disk usage (Free vs Used including percentage)
 - Top 5 processes by CPU usage
 - Top 5 processes by memory usage
'

while :; do
    # Get the CPU and memory usage
    cpuUsage=$(top -bn1 | awk '/Cpu/{ print $2 }')
    memUsage=$(free -m | awk '/Mem/{print $3}')

    #Print the usage
    echo "CPU Usage: $cpuUsage%"
    echo "Memory Usage: $memUsage MB"

    sleep 1
done

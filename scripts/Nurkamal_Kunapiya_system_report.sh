#!/bin/bash

# Student: Kunapiya Nurkamal
# Purpose: Generate a Linux system report

PROJECT_DIR="$HOME/devops/nurkamal-kunapiya-student-api"
LOG_FILE="$PROJECT_DIR/logs/Nurkamal_Kunapiya_system_report.log"

# Save the report to the log and display it in the terminal
{
    echo "======================================"
    echo "       LINUX SYSTEM REPORT"
    echo "======================================"

    echo "Student Name: Kunapiya Nurkamal"
    echo "Date and Time: $(date)"
    echo "Current Username: $(whoami)"

    echo ""
    echo "Operating System:"
    cat /etc/os-release | grep -E '^(PRETTY_NAME)='

    echo ""
    echo "Kernel Version:"
    uname -r

    echo ""
    echo "CPU Information:"
    lscpu | grep -E 'Model name|CPU\(s\)' | head -n 2

    echo ""
    echo "Memory Information:"
    free -h

    echo ""
    echo "Disk Usage:"
    df -h

    echo ""
    echo "Available Disk Space:"
    df -h /
    
    echo ""
    echo "======================================"
    echo "Report completed."
    echo "======================================"

} | tee "$LOG_FILE"

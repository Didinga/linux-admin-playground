#!/bin/bash

# ==============================================================================
# Script Name: system_health_check.sh
# Description: Professional system diagnostic tool for CPU, Memory, and Disk.
# Author: Didinga Omodi
# ==============================================================================

# Konfigurace - barvy pro lepší čitelnost v terminálu
RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color

# Funkce pro výpis nápovědy
usage() {
    echo "Usage: $0 [option]"
    echo "Options:"
    echo "  --check    Run full system diagnostics"
    echo "  --help     Display this help message"
    exit 1
}

# Funkce pro kontrolu vytížení CPU
check_cpu() {
    echo -e "${GREEN}[+] Checking CPU Load...${NC}"
    uptime | awk '{print "Load Average: " $10 $11 $12}'
}

# Funkce pro kontrolu paměti
check_mem() {
    echo -e "${GREEN}[+] Checking Memory Usage...${NC}"
    free -h | grep -E "Mem|Total"
}

# Funkce pro kontrolu disku (hlídá zaplnění nad 80 %)
check_disk() {
    echo -e "${GREEN}[+] Checking Disk Space...${NC}"
    df -h | grep '^/dev/' | awk '{ print $5 " " $1 }' | while read output;
    do
        usage=$(echo $output | awk '{print $1}' | cut -d'%' -f1)
        partition=$(echo $output | awk '{print $2}')
        if [ $usage -ge 80 ]; then
            echo -e "${RED}[!] Critical: Partition $partition is at ${usage}%${NC}"
        else
            echo -e "[-] Partition $partition: ${usage}% (OK)"
        fi
    done
}

# Hlavní logika (Main)
if [[ $# -eq 0 || "$1" == "--help" ]]; then
    usage
elif [[ "$1" == "--check" ]]; then
    echo "--- System Health Report ---"
    date
    echo "----------------------------"
    check_cpu
    check_mem
    check_disk
    echo "----------------------------"
    echo "Done."
else
    echo -e "${RED}Error: Unknown option $1${NC}"
    usage
fi

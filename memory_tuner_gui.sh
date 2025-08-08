#!/bin/bash
# Simple Linux Memory Tuning GUI
# By Ahmed

# Ask for Swappiness
SWAPPINESS=$(zenity --entry \
    --title="Set Swappiness" \
    --text="Enter swappiness value (1-100):" \
    --entry-text="10")

# Ask for Cache Pressure
CACHE=$(zenity --entry \
    --title="Set Cache Pressure" \
    --text="Enter cache pressure value (1-200):" \
    --entry-text="50")

# Validate input
if [[ -n "$SWAPPINESS" && -n "$CACHE" ]]; then
    # Backup
    sudo cp /etc/sysctl.conf /etc/sysctl.conf.bak.$(date +%F_%T)

    # Remove old settings
    sudo sed -i '/vm.swappiness/d' /etc/sysctl.conf
    sudo sed -i '/vm.vfs_cache_pressure/d' /etc/sysctl.conf

    # Write new settings
    echo "vm.swappiness=$SWAPPINESS" | sudo tee -a /etc/sysctl.conf
    echo "vm.vfs_cache_pressure=$CACHE" | sudo tee -a /etc/sysctl.conf

    # Apply immediately
    sudo sysctl -w vm.swappiness=$SWAPPINESS
    sudo sysctl -w vm.vfs_cache_pressure=$CACHE

    zenity --info --text="✅ Settings applied successfully!"
else
    zenity --error --text="❌ Invalid input! Nothing changed."
fi


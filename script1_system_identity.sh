#!/bin/bash
# ============================================================
# Script 1: System Identity Report
# Author: RIDHIMA AGARWAL | Roll: 24BCE10320
# Course: Open Source Software | Software Choice: Git
# Description: Displays a welcome screen with system info
# ============================================================

# --- Variables ---
STUDENT_NAME="RIDHIMA AGARWAL"        # Replace with your name
SOFTWARE_CHOICE="Git"             # Our chosen open-source software
LICENSE="GPL v2"                  # Git's license

# --- Gather system information using command substitution ---
KERNEL=$(uname -r)                          # Get kernel version
USER_NAME=$(whoami)                         # Get current logged-in user
HOME_DIR=$HOME                              # Get home directory path
UPTIME=$(uptime -p)                         # Get human-readable uptime
CURRENT_DATE=$(date '+%d %B %Y %H:%M:%S')  # Get current date and time
DISTRO=$(lsb_release -d | cut -f2)         # Get Linux distro name

# --- Display formatted output ---
echo "=================================================="
echo "       Open Source Audit — $STUDENT_NAME"
echo "       Chosen Software: $SOFTWARE_CHOICE"
echo "=================================================="
echo ""
echo "  System Information"
echo "  ------------------"
echo "  Distribution : $DISTRO"
echo "  Kernel       : $KERNEL"
echo "  Logged in as : $USER_NAME"
echo "  Home Dir     : $HOME_DIR"
echo "  Uptime       : $UPTIME"
echo "  Date & Time  : $CURRENT_DATE"
echo ""
echo "  License Info"
echo "  ------------"
echo "  This system runs Linux, which is licensed under"
echo "  the $LICENSE (GNU General Public License v2)."
echo "  Git, our chosen software, is also under $LICENSE."
echo "  This means you are free to use, study, modify,"
echo "  and redistribute both Linux and Git freely."
echo ""
echo "=================================================="
echo "  'In real open source, you have the right to"
echo "   control your own destiny.' — Linus Torvalds"
echo "=================================================="

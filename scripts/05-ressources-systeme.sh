#!/bin/bash
# Author: 0x07cb
# Checkup script for system diagnostics
# ######################################

# #### ETAPE [5] Surveillance des ressources système (CPU/RAM/Swap)
# Description:
#
# "Un système lent est un système vulnérable."
# — Donne un aperçu de l’utilisation des ressources. Permet de localiser les goulets d’étranglement.
#


{
    echo "[5] Utilisation CPU / RAM / Swap :"
    echo "----------------------------------------"

    echo "CPU Usage:"
    top -b -n1 | head -n 10
    echo "----------------------------------------"

    echo "Memory Usage:"
    free -h
    echo "----------------------------------------"
    echo "Swap Usage:"
    swapon --show
    echo "----------------------------------------"
    
    echo ""
    echo "==========================================="
    echo ""

} >> "$LOGFILE" 2>&1
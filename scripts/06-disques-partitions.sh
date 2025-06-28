#!/bin/bash
# Author: 0x07cb
# Checkup script for system diagnostics
# ######################################

# #### ETAPE [6] Utilisation du disque et des partitions
# Description:
#
# "L’espace est limité. La saturation est inévitable si elle n’est pas contrôlée."
# — Analyse de l’espace disque. Un disque plein peut provoquer des comportements instables.
#

{
    echo "===== [6] Utilisation du disque et des partitions ====="
    echo "Heure de l'exécution (ETAPE 6) : $(date +%H:%M:%S)"
    echo "-------------------------------------------"
    echo ""

    echo '"""'
    echo "Mounted Filesystems:"
    df -hT
    echo '"""'
    echo ""
    echo "==========================================="
    echo ""

} >> "$LOGFILE" 2>&1
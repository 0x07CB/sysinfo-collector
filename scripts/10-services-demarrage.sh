#!/bin/bash
# Author: 0x07cb
# Checkup script for system diagnostics
# ######################################

# #### ETAPE [10] Services au démarrage
# Description:
#
# "Ce qui s’active seul mérite suspicion."
# — Liste des services configurés pour démarrer automatiquement. Objectif : limiter l’exécution non justifiée.
#
#

{
    echo "===== [10] Services au démarrage ====="
    echo "Heure de l'exécution (ETAPE 10) : $(date +%H:%M:%S)"
    echo "-------------------------------------------"
    echo ""

    echo '"""'
    systemctl list-unit-files --type=service | grep enabled
    echo '"""'
    echo ""
    echo "==========================================="
    echo ""

} >> "$LOGFILE" 2>&1
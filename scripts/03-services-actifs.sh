#!/bin/bash
# Author: 0x07cb
# Checkup script for system diagnostics
# ######################################

# #### ETAPE [3] Services actifs (en arrière-plan)
# Description:
#
# "Chaque processus inutile est une ouverture superflue."
# — Liste les services en cours d’exécution. Identifier ceux qui ne sont pas requis.
#

{
    echo "===== [3] Services actifs (en arrière-plan) ====="
    echo "Heure de l'exécution (ETAPE 3) : $(date +%H:%M:%S)"
    echo "-------------------------------------------"
    echo ""

    echo '"""'
    systemctl list-units --type=service --state=running
    echo '"""'
    echo ""
    echo "==========================================="
    echo ""

} >> "$LOGFILE" 2>&1
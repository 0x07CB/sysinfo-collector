#!/bin/bash
# Author: 0x07cb
# Checkup script for system diagnostics
# ######################################

# #### ETAPE [11] Utilisateurs et connexions récentes
# Description:
#
# "Traquez les traces. Chaque connexion est un signal."
# — Permet d’identifier les connexions précédentes. Repère les utilisateurs et les accès suspects.
#
#

{
    echo "===== [11] Utilisateurs et connexions récentes ====="
    echo "Heure de l'exécution (ETAPE 11) : $(date +%H:%M:%S)"
    echo "-------------------------------------------"
    echo ""

    echo '"""'
    lastlog
    last -n 10
    echo '"""'
    echo ""
    echo "==========================================="
    echo ""

} >> "$LOGFILE" 2>&1
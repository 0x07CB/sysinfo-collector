#!/bin/bash
# Author: 0x07cb
# Checkup script for system diagnostics
# ######################################

# #### ETAPE [9] Journaux système – erreurs critiques
# Description:
#
# "Les journaux ne mentent pas. Ils témoignent."
# — Recherche d’anomalies ou d’erreurs graves. Première alerte en cas de dysfonctionnements internes.
#
#

{
    echo "===== [9] Journaux système – erreurs critiques ====="
    echo "Heure de l'exécution (ETAPE 9) : $(date +%H:%M:%S)"
    echo "-------------------------------------------"
    echo ""

    echo '"""'
    journalctl -p 3 -xb
    echo '"""'
    echo ""
    echo "==========================================="
    echo ""

} >> "$LOGFILE" 2>&1
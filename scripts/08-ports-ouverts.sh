#!/bin/bash
# Author: 0x07cb
# Checkup script for system diagnostics
# ######################################

# #### ETAPE [8] Ports réseau ouverts
# Description:
#
# "Tout port ouvert est une invitation."
# — Énumère les services en écoute sur le réseau. Évaluation des surfaces d’exposition.
#

{
    echo "===== [8] Ports réseau ouverts ====="
    echo "Heure de l'exécution (ETAPE 8) : $(date +%H:%M:%S)"
    echo "-------------------------------------------"
    echo ""

    echo '"""'
    ss -tulnp
    echo '"""'
    echo ""
    echo "==========================================="
    echo ""

} >> "$LOGFILE" 2>&1

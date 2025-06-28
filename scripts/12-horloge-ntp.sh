#!/bin/bash
# Author: 0x07cb
# Checkup script for system diagnostics
# ######################################

# #### ETAPE [12] Horloge système et synchronisation NTP
# Description:
#
# "Le temps est un vecteur de confiance. S’il dérive, tout vacille."
# — Vérifie l’exactitude de l’horloge système. Crucial pour les journaux, certificats, et authentifications.
#

{
    echo "===== [12] Horloge système et synchronisation NTP ====="
    echo "Heure de l'exécution (ETAPE 12) : $(date +%H:%M:%S)"
    echo "-------------------------------------------"
    echo ""

    echo '"""'
    timedatectl status
    echo '"""'
    echo ""
    echo "==========================================="
    echo ""

} >> "$LOGFILE" 2>&1

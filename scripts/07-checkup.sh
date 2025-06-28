#!/bin/bash
# Author: 0x07cb
# Checkup script for system diagnostics
# ######################################

# #### ETAPE [7] Processus anormaux ou gourmands
# Description:
#
# "L’inefficience est un symptôme. Cherchez la cause."
# — Affiche les processus les plus consommateurs. Détection d’activités suspectes ou mal optimisées.
#


{
    echo "[7] Processus gourmands en ressources :"
    ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%mem | head -n 10

} >> "$LOGFILE" 2>&1
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
    echo "[10] Services activés au démarrage :"
    systemctl list-unit-files --type=service | grep enabled

} >> "$LOGFILE" 2>&1
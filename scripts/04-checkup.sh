#!/bin/bash
# Author: 0x07cb
# Checkup script for system diagnostics
# ######################################

# #### ETAPE [4] État de santé du système via systemd
# Description:
#
# "Le cœur du système bat-il de manière régulière ?"
# — Vérifie si le système fonctionne correctement. Signale les services en échec.
#


{

    echo "[4] État général de systemd :"
    echo "----------------------------------------"
    echo "Etat du système :"
    systemctl is-system-running

    echo "----------------------------------------"
    echo "Services en échec :"
    systemctl --failed

    echo "----------------------------------------"

} >>"$LOG_FILE" 2>&1
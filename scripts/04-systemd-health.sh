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
    systemctl is-system-running
    systemctl --failed

    echo ""
    echo "==========================================="
    echo ""

} >> "$LOGFILE" 2>&1
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
    echo "[9] Derniers journaux critiques :"
    journalctl -p 3 -xb

} >> "$LOGFILE" 2>&1
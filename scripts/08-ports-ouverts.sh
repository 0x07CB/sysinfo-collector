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
    
    echo "[8] Ports réseau ouverts :"
    ss -tulnp

} >> "$LOGFILE" 2>&1

#!/bin/bash
# Author: 0x07cb
# Checkup script for system diagnostics
# ######################################

# #### ETAPE [3] Services actifs (en arrière-plan)
# Description:
#
# "Chaque processus inutile est une ouverture superflue."
# — Liste les services en cours d’exécution. Identifier ceux qui ne sont pas requis.
#


{

    echo "[3] Services actifs :"
    systemctl list-units --type=service --state=running


} >>"$LOG_FILE" 
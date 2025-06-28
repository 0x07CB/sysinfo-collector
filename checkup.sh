#!/bin/bash
# Author: 0x07cb
# Checkup script for system diagnostics
# ######################################


# ##### ENV VARS #####
# Definition de la variable LOGFILE (emplacement du fichier de log)
LOGFILE="$(pwd)/checkup.log"


SCRIPTS_DIR="$(dirname "$0")/scripts"
for script in "$SCRIPTS_DIR"/*.sh; do
    if [[ -x "$script" ]]; then
        chmod +x "$script"
        echo -e "\e[32mExécution du script : $script\e[0m"
        # Exécute le script et redirige la sortie vers le fichier de log
        . "$script"
    else
        echo -e "\e[32mExécution du script : $script\e[0m"
        . "$script"
    fi
done
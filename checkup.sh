#!/bin/bash
# Author: 0x07cb
# Checkup script for system diagnostics
# ######################################


# ##### ENV VARS #####
# Definition de la variable LOGFILE (emplacement du fichier de log)
LOGFILE="$(pwd)/checkup.log"


for script in /home/rds/github/0x07cb/sysinfo-collector/scripts/*.sh; do
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
#!/bin/bash
# Author: 0x07cb
# Checkup script for system diagnostics
# ######################################

# #### ETAPE [2]: Vérification des mises à jour disponibles ####
# Description:
#
# "Un système obsolète est une faille en puissance."
# — Détecte les paquets obsolètes. Mesure de prévention contre les vulnérabilités connues.
#
{

    echo "[2] Vérification des mises à jour disponibles :"
    if command -v apt >/dev/null; then
        sudo apt update && apt list --upgradable
    elif command -v dnf >/dev/null; then
        sudo dnf check-update
    elif command -v yum >/dev/null; then
        sudo yum check-update
    else
        echo "Gestionnaire de paquets non reconnu."
    fi


} >> "$LOGFILE"
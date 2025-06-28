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

    echo "===== [2] Vérification des mises à jour disponibles ====="
    echo "Heure de l'exécution (ETAPE 2) : $(date +%H:%M:%S)"
    echo "-------------------------------------------"
    echo ""

    echo '"""'
    if command -v apt >/dev/null; then
        if ! sudo apt update > /dev/null 2>&1; then
            echo "[ERROR]: Erreur lors de l'exécution de 'apt update'. Arrêt du script."
            exit 1
        fi
        apt list --upgradable -a 2>/dev/null

    elif command -v dnf >/dev/null; then
        sudo dnf check-update
    elif command -v yum >/dev/null; then
        sudo yum check-update
    else
        echo "[WARNING]: Gestionnaire de paquets non reconnu."
    fi

    echo '"""'
    echo ""
    echo "==========================================="
    echo ""

} >> "$LOGFILE" 2>&1
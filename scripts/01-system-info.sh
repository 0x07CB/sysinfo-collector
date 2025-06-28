#!/bin/bash
# Author: 0x07cb
# Checkup script for system diagnostics
# ######################################

# #### ETAPE [1]: Version du noyau et informations système ####
# Description:
#
# "Identifier l’architecture de base. On ne peut sécuriser ce que l’on ne comprend pas."
# — Permet de connaître la version du noyau, la distribution et son édition. Indispensable pour adapter les actions.
#
{
    echo "==========================================="
    echo "======== Checkup de l'environnement ======="
    echo "===== [1] Version du noyau et système ====="
    echo "Date du checkup : $(date)"
    echo
    echo "Informations détaillées du système (uname) :"
    echo
    echo "- Nom du noyau (kernel name) :"
    uname -s
    echo
    echo "- Nom du nœud réseau (hostname) :"
    uname -n
    echo
    echo "- Version du noyau (kernel release) :"
    uname -r
    echo
    echo "- Version détaillée du noyau (kernel version) :"
    uname -v
    echo
    echo "- Architecture matérielle (machine) :"
    uname -m
    echo
    echo "- Type de processeur (processor) :"
    uname -p 2>/dev/null || echo "Non disponible"
    echo
    echo "- Plate-forme matérielle (hardware platform) :"
    uname -i 2>/dev/null || echo "Non disponible"
    echo
    echo "- Système d'exploitation (operating system) :"
    uname -o
    echo
    echo "Informations sur la distribution :"
    echo
    lsb_release -a 2>/dev/null || cat /etc/*release
    echo
    echo "==========================================="
    echo
} >> "$LOGFILE" 2>&1



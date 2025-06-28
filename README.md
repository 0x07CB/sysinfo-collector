# sysinfo-collector
> Collecte et rapport d’informations système détaillées.

## Présentation

**sysinfo-collector** est un ensemble de scripts Bash permettant de collecter, organiser et présenter des informations essentielles sur un système Linux. L’objectif est de fournir un diagnostic lisible et exploitable, aussi bien pour les administrateurs système que pour les utilisateurs avancés.

## Fonctionnalités principales
- Collecte d’informations sur le noyau, la distribution et l’architecture
- Vérification des mises à jour disponibles (apt, dnf, yum)
- Liste des services actifs et leur état (systemd)
- Surveillance des ressources système (CPU, RAM, Swap)
- Analyse de l’espace disque et des partitions
- Détection des processus gourmands ou anormaux
- Énumération des ports réseau ouverts
- Consultation des journaux système critiques
- Liste des services activés au démarrage
- Historique des utilisateurs et connexions récentes
- Vérification de la synchronisation de l’horloge système (NTP)
- Scripts modulaires et adaptables, facilement extensibles

## Structure des scripts
Chaque fonctionnalité est couverte par un script dédié dans le dossier `scripts/` :

- `01-system-info.sh` : Informations système et noyau
- `02-check-upgradable.sh` : Mises à jour disponibles
- `03-services-actifs.sh` : Services actifs
- `04-systemd-health.sh` : État général de systemd
- `05-ressources-systeme.sh` : Utilisation CPU/RAM/Swap
- `06-disques-partitions.sh` : Disques et partitions
- `07-processus-gourmands.sh` : Processus gourmands
- `08-ports-ouverts.sh` : Ports réseau ouverts
- `09-journaux-critiques.sh` : Journaux critiques
- `10-services-demarrage.sh` : Services au démarrage
- `11-utilisateurs-connexions.sh` : Utilisateurs et connexions
- `12-horloge-ntp.sh` : Horloge système et NTP

## Utilisation

Depuis la racine du projet :

```bash
chmod +x checkup.sh
./checkup.sh
```

Les résultats détaillés sont enregistrés dans le fichier `checkup.log` à la racine du projet. Chaque exécution écrase le contenu précédent.

> **Remarque :** Les scripts sont conçus pour fonctionner sur la plupart des distributions Linux utilisant systemd. Certains modules nécessitent des droits sudo (ex : vérification des mises à jour).

## Contribution

Les contributions sont les bienvenues !

- Forkez le dépôt et créez une branche dédiée à vos modifications
- Respectez la structure modulaire (un script = une fonctionnalité)
- Documentez clairement vos ajouts dans le code et le README
- Proposez une Pull Request détaillée

Pour toute suggestion ou bug, ouvrez une issue sur le dépôt.

## Avertissement
Ce projet est en développement. Les fonctionnalités et la structure peuvent évoluer.

## Licence
À définir.

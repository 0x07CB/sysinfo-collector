# Guide de contribution à sysinfo-collector

Merci de votre intérêt pour contribuer à ce projet ! Voici quelques recommandations pour garantir la qualité, la cohérence et la maintenabilité du code.

## Avant de commencer
- Lisez le fichier `README.md` pour comprendre la structure et les objectifs du projet.
- Vérifiez que votre modification n’est pas déjà proposée ou en cours de discussion (issues ou pull requests existantes).

## Règles générales
- **Un script = une fonctionnalité** : chaque nouvelle fonctionnalité doit être ajoutée sous forme d’un script distinct dans le dossier `scripts/`.
- **Respectez la structure** : inspirez-vous des scripts existants pour la structure, les commentaires et la présentation des résultats.
- **Compatibilité** : privilégiez la compatibilité avec la majorité des distributions Linux utilisant systemd.
- **Lisibilité** : commentez votre code et utilisez des noms explicites pour les variables et fonctions.

## Processus de contribution
1. **Forkez** le dépôt et créez une branche dédiée à votre modification.
2. **Développez** votre fonctionnalité ou correction de bug.
3. **Testez** vos scripts sur différentes distributions si possible.
4. **Documentez** clairement vos ajouts :
   - Ajoutez une description dans le code (en-tête du script, commentaires).
   - Mettez à jour le `README.md` pour référencer votre script et expliquer brièvement sa fonction.
5. **Proposez une Pull Request** détaillée, en expliquant le but de la modification et les tests réalisés.

## Bonnes pratiques
- Privilégiez les commandes POSIX et évitez les dépendances inutiles.
- Utilisez des messages d’erreur clairs et explicites.
- Respectez l’ordre de numérotation des scripts.
- Vérifiez que votre code ne casse pas l’exécution globale (`checkup.sh`).

## Support et questions
Pour toute question, suggestion ou signalement de bug, ouvrez une issue sur le dépôt GitHub.

Merci pour votre contribution !
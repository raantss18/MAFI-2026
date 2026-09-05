# MAFI-2026 – Dépôt de rendus de TP

**Ce dépôt est destiné aux rendus des travaux pratiques des étudiants du Master MAFI, année 2026, Université d'Antananarivo.**

---

## Rappels importants pour les étudiants

### 1. Chaque étudiant travaille sur SA PROPRE BRANCHE
- Créez une branche à votre nom (ex. `rakotomavo-zo`) et travaillez uniquement dessus.
- **Ne travaillez jamais sur la branche `main`** (elle est réservée à l’enseignant).
- Poussez directement sur votre branche : `git push origin votre-branche`.

### 2. Structure des dossiers (obligatoire)
- L’enseignant crée des dossiers de TP : `TP1-introduction-a-python/`, etc.
- À l’intérieur de **chaque** dossier de TP, vous devez créer un sous-dossier nommé **exactement** `NOM Prenom` (exemple : `RAKOTOMAVO Zo`).
- Placez tous vos fichiers (scripts, rapports, etc.) dans ce sous-dossier.

### 3. Ne pas abîmer le travail des autres
- **Ne modifiez jamais** les dossiers d’un autre étudiant.
- Ne supprimez aucun dossier ou fichier qui ne vous appartient pas.
- Ne faites pas de `git push --force` : cela pourrait effacer l’historique.

### 4. Commandes de base à retenir
```bash
git status                 # vérifier l’état
git add .                  # ajouter vos modifications
git commit -m "message"    # valider localement
git push origin ma-branche # envoyer sur votre branche
git pull                   # récupérer les corrections

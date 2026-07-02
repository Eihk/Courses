# Exercices — Chapitre 01 : Terminal & Navigation

---

Pour les exos, il faut remplir le fichier ici dans ce
**[fichier de réponse](./01_Reponses.md)**

---
## Exercice 1 — Questions de cours

Quelles sont les commandes pour :
1. Savoir où tu es.
2. Afficher le contenu **détaillé** de ton dossier sans les fichiers et dossiers cachés.
3. Changer de dossier.
4. Afficher le fonctionnement d'une commande.
5. Remonter d'un niveau.
6. Retourner au dossier précédent.

Quelles sont les raccourcis pour :
1. Auto-compléter.
2. Parcours l'historique des commandes.
3. Nettoyer le terminal.
4. Fermer le terminal.
5. Arrêter la commande en cours.

Quelle est la différence entre `cd /tmp` et `cd tmp` ?

---

## Exercice 2 — Explorer l'arborescence

Dans le dossier `01/`, on a l'arborescence suivante:
```
...
├── 01/
|   ├── 01_Cours.md
|   ├── 01_Exo.md
|   ├── 01_Reponses.md
|   ├── sendWork.sh
│   └── Arborescence/
│       ├── app/
│   	│	├── config/
│   	│	│	└── ...
│   	│	├── ...
│   	│	├── ...
│       └── gen/
│   		├── bin/
│   		└── component/
│   			├── include/
│   			│	└── ...
│   			├── source/
│   			│	├── ...
│   			│	└── ...
│   			└── ...
├── 02/...
└── 03/...
```

L'objectif de cet exercice de savoir ce que contienne les dossiers `app/`, `config/`, `component/`, `include/` et `source/`. Il faut donc remplacer les `...` par le nom des fichiers.

En utilisant **uniquement** `cd` et `ls` :
1. Vérifie où tu es avec la commande trouvée à l'exercie 1.
2. Trouve le nom des fichiers
---

## Envoyer le travail

Une fois que le fichier réponse est remplie, rentre cette commande dans le terminal depuis le dossier `shell/01/`
``` sh
./sendWork.sh
```
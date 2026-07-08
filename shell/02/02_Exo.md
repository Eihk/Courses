# Exercices — Chapitre 02 : Fichiers & Permissions

---
## Exercice 1 — Créer l'arborescence suivante

Créer cette arborescence (depuis le dossier Exo1) en utilisant uniquement le terminal.
```
├── 01/...
├── 02/
|   ├── ... (les autres fichiers)
│   └── Exo1/ <- Depart
│       ├── app/
│   	│	├── config/
│   	│	│	└── config.xml
│   	│	├── app.txt
│   	│	├── app.sh
│       └── gen/
│   		├── test0/
│   		├── test1
│   		├── test2/
│   		├── test3
│   		└── test4 -> test0
└── 03/...
```

---

## Exercice 2 — Permissions

Dans le dossier `Exo2`, créer tous les fichiers et répertoires et faire en sorte que l'affichage de la commande `ls -l` dans `Exo2` ressemble à cela:
```sh
total 8
drwx--xr-x 2 XX XX XX Jul  8 19:47 test0
-rwx-w---- 1 XX XX  0 Jul  8 19:47 test1
dr-x--x--- 2 XX XX XX Jul  8 19:47 test2
-r-----r-- 1 XX XX  0 Jul  8 19:47 test3
-rw-r----x 1 XX XX  0 Jul  8 19:47 test4
-r-----r-- 1 XX XX  0 Jul  8 19:47 test5
lrwxrwxrwx 1 XX XX  5 Jul  8 19:54 test6 -> test0
```

---

## Exerice 3 — Fichiers

1. Copie le fichier `exo3.txt` et nomme le `exo3_ilissa.txt`.
2. Ajoute dans ce fichier le texte suivant: "Copie de exo3.txt".
3. Affiche le contenu du fichier `exo3_ilissa.txt`. Il doit contenir:
```sh
Exercice 3.
Copie de exo3.txt
```
4. S'il ne contient pas le texte ci-dessus, supprime ton fichier `exo3_ilissa.txt` et recommence.

---
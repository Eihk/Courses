# 📖 Chapitre 02 — Fichiers & Permissions

---

## 1. Créer des fichiers et dossiers

| Commande | Signification | Exemple |
|----------|---------------|---------|
| `touch <fichier>` | Créer un fichier vide | `$ touch file.txt` |
| `mkdir <dossier>` | Créer un dossier | `$ mkdir projets` |
| `echo "texte" > fichier` | Ajoute du texte dans un fichier (écrase le contenu actuel du fichier) | `$ echo "salut" > file.txt` |
| `echo "texte" >> fichier` | Ajoute du texte dans un fichier à la fin (sans écraser le contenu) | `$ echo "salut" >> file.txt` |
| `cat <fichier>` | Affiche le contenu d'un fichier | `$ cat file.txt` |
| `less` | Affiche page par page (quitter: q) | `$ less file.txt` |

> 💡 **Attention** : `>` écrase le fichier. `>>` ajoute à la fin !

---

## 2. Copier, déplacer, supprimer

| Commande | Signification | Exemple |
|----------|---------------|---------|
| `cp <src> <dest>` | *Copy*. Copie un fichier. Peut être un chemin | `$ cp source.txt destination.txt` |
| `cp -r <src> <dest>` | *Recursive Copy*. Copie un dossier entier | `$ cp -r projets projets_bak` |
| `mv <src> <dest>` | *Move*. Déplace ou renomme un fichier ou un dossier | `$ mv old.txt new.txt` |
| `rm <file>` | *Remove*. Supprime un fichier | `$ rm file.txt` |
| `rm -r <folder>` | *Recursive Remove*. Supprime un dossier **et** son contenu | `$ rm -r projets` |
| `rmdir <folder>` | *Remove Directory*. Supprime un dossier **vide**. | `$ rmdir old_folder` |

> 💡 **Attention** : `rm` est irréversible. Vérifie toujours avant de supprimer.

---

## 3. Lire les permissions

Quand tu tapes `ls -l` ou `ls -la`, tu vois des lignes comme :
```
-rwxr-xr--  1  ilissa  ilissa  1234  Jan 10  main.c
drwxr-xr-x  2  ilissa  ilissa   128  Jan 10  projets/
```

Les blocs `-rwxr-xr--` et `drwxr-xr-x` de 10 caractères correspondent aux **permissions** des fichiers et dossiers.


Voici un schéma explicatif:
```
- r w x r - x r - -
│ │   │ │   │ │   └── autres (other)  : r-- = peut lire, pas écrire ni exécuter
│ │   │ │   └──────── groupe (group)  : r-x = peut lire et exécuter, pas écrire
│ │   └───────────── propriétaire     : rwx = peut tout faire
└─────────────────── type : - = fichier, d = dossier, l = lien symbolique
```
Le premier caractère correspond au type du fichier (`-` = fichier, `d` = dossier, `l` = lien symbolique). On verra plus tard ce qu'est un `lien symbolique`.

Les 9 caractères suivants sont groupés par 3.
- **Caractères 2 à 4**  : Permissions des **propriétaire**. C'est en général celui qui a crée le fichier.
- **Caractères 5 à 7**  : Permissions des **groupes**. C'est un ensemble d'utilisateur.
- **Caractères 8 à 10** : Permissions des **autres**. Littéralement les autres, ceux qui ne sont ni propriétaires, ni membre du groupe du fichier ou dossier.

Les permissions sont toujours organisés en `- - - = r w x`.
- `r` = **r**ead - lire
- `w` = **w**rite - écrire ou modifier
- `x` = e**x**ecute - exécuter (pour un fichier) ou entrer (pour un dossier)
- `-` = permission absente.

Par exemple, `main.c`:
- Est un `fichier` - Première caractre = `-`.
- Le propriétaire peut lire, écrire et éxécuter.
- Les membres du groupe peuvent lire et éxécuter mais pas écrire
- Les autres utilisateurs ne peuvent que lire.

---

## 4. Modifier les permissions

La manière la plus classique de modifier les permissions est avec la commande `chmod`.
Il existe deux notations pour les modifiers : `symbolique` et `octales`.

### Notation symbolique

```sh
chmod +x script.sh		# ajoute le droit d'exécuter pour tout le monde
chmod -w script.sh		# retire le droit d'écriture pour tout le monde
chmod u+x script.sh		# ajoute x uniquement pour le propriétaire (u = user)
chmod g-x script.sh		# retire x uniquement pour le groupe (g = group)
chmod o+w script.sh		# ajoute w uniquement pour les autres (p = other)
```

### Notation octales

Dans cette notation, chqaue permission vaut un chiffre : `r=4`, `w=2`, `x=1`.
Pour obtenir les permissions d'un groupe (user, group, other), on additionne ces valeurs.

```
rwx = 4 + 2 + 1 = 7
r-x = 4 + 0 + 1 = 5
r-- = 4 + 0 + 0 = 4
--- = 0
```

Examples :
```sh
chmod 755 script.sh		# -rwxr-xr-x (user = 7, group = 5, other = 5)
chmod 644 notes.txt		# -rw-r--r-- (user = 6, group = 5, other = 4)
chmod 600 secret.txt	# -rw------- (user = 6, group = 0, other = 0)
chmod 777 all.sh		# -rwxrwxrwx (tout le monde peut tout faire)
```

### Table de référence

| Octal | Binaire | Permissions |
|-------|---------|-------------|
| 7 | 111 | `rwx` |
| 6 | 110 | `rw-` |
| 5 | 101 | `r-x` |
| 4 | 100 | `r--` |
| 3 | 011 | `-wx` |
| 2 | 010 | `-w-` |
| 1 | 001 | `--x` |
| 0 | 000 | `---` |

---

## 5. Archiver avec tar

`tar` est une commande qui permet de regrouper des fichiers en une seule archive (comme un `.zip`).

```sh
# Créer une archive
tar -cf archive.tar fichier1 fichier2 dossier/
# -c = create, -f = nom du fichier

# Créer une archive compressée (.tar.gz)
tar -czf archive.tar.gz dossier/
# -z = compression gzip

# Lister le contenu d'une archive
tar -tf archive.tar

# Extraire une archive
tar -xf archive.tar
# -x = extract
```

## 6. Les liens

Il existe deux types de liens:
- **Lien Dur** ou **Hard Link** - deux noms pour le même fichier.
- **Lien symbolique** ou **Symlink** - copier virtuel d'un fichier.

```sh
# Lien dur (hard link) — deux noms pour le même fichier
ln fichier_original lien_dur

# Lien symbolique (symlink) — un raccourci
ln -s fichier_original lien_symbolique
```

Dans `ls -la`, les liens symboliques apparaissent avec `->` :
```
lrwxr-xr-x  1  ilissa  staff  5 Jan 10  lien -> fichier_original
```

De manière brève, le lien dur est peu utilisé. Un lien symbolique peut être pratique pour éviter de copier sans arrêt un fichier autre part.


Si tu modifies le lien symbolique, le fichier d'origine est lui aussi modifié. Tandis que modifier un lien dur ne modifie pas le fichier d'origine.

> 💡 Je ne pense pas que tu utilises ça dès le début, mais c'est une notion importante.

---

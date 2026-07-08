# 📖 Chapitre 01 — Terminal & Navigation

---

## 0. Installation

On va d'abord installer le terminal Ubuntu. Ubuntu c'est quoi un système d'exploitation comme Windows, mais qui permet une navigation plus simple pour la programmation.
On va le faire ensemble donc ... appelle moi ! Si tu veux installer toute seule, tu peux chercher `WSL`.

---

## 1. C'est quoi le terminal ?

Quand tu utilises ton ordinateur, tu navigues normalement avec une interface graphique : tu cliques sur des icônes, tu fais glisser des fichiers. Le terminal, c'est la même chose mais en **texte**. Au lieu de cliquer sur un dossier, tu tapes une commande.

Quand tu ouvres le terminal (Git Bash sur Windows), tu vois quelque chose comme :

```
Sebastien@LAPTOP-VRN91Q93 MINGW64 ~
$
```

Avec :
- **Ilissa** → ton nom d'utilisateur
- **LAPTOP-VRN91Q93** → le nom de ta machine
- **~** → ton emplacement actuel (`~` = dossier personnel)
- **$** → tu tapes tes commandes après le `$`

Le **Shell** est le programme qui lit tes commandes et les exécute. Le plus courant est **bash**. Sur Windows, tu utilises **Git Bash**.

---

## 2. Naviguer avec le terminal

L'ordinateur organise les fichiers en **arborescence**, comme un arbre :

```
/                           <- racine (tout part de là)
├── home/                   <- dossier des utilisateurs
│   ├── Sebastien/          <- son dossier (= ~)
│   │   ├── Documents/
│   │   └── Bureau/
│   └── Ilissa/             <- TON dossier (= ~)
│       ├── Documents/
│       ├── Bureau/
│       └── Projets/
├── etc/                    <- configuration système
└── usr/                    <- programmes installés
```

### Deux types de chemins

**Chemin absolu** — commence toujours par `/`, ne dépend pas d'où tu es :
```
/home/Ilissa/Documents
/home/Ilissa/Projets/42
```

**Chemin relatif** — part du dossier où tu es actuellement :
```
Documents/        (si tu es dans /home/Ilissa/)
../Sebastien/     (si tu es dans /home/Ilissa/, tu remontes d'un niveau)
```

> 💡 **Astuce** : `..` = le dossier parent (un niveau au-dessus), `.` = le dossier actuel

---

## 3. Les commandes essentielles de navigation

| Commande | Signification | Exemple |
|----------|---------------|---------|
| `pwd` | **P**rint **W**orking **D**irectory — affiche où tu es | `$ pwd` |
| `whoami` | Affiche ton nom d'utilisateur | `$ whoami` |
| `ls` | **L**i**s**t — liste les fichiers du dossier | `$ ls` |
| `ls -l` | Liste détaillée (droits, taille, date...) | `$ ls -l` |
| `ls -a` | Liste avec fichiers cachés (commençant par `.`) | `$ ls -a` |
| `ls -la` | Les deux à la fois | `$ ls -la` |
| `cd <dossier>` | **C**hange **D**irectory — entre dans un dossier | `$ cd Documents` |
| `cd ..` | Remonte d'un niveau | `$ cd ..` |
| `cd -` | Retourne au dossier précédent | `$ cd -` |
| `cd ~` | Retourne à ton dossier personnel | `$ cd ~` |
| `clear` | Nettoie le terminal | `$ clear` |
| `history` | Historique des commandes | `$ history` |
| `man <cmd>` | Manuel d'une commande (quitter : `q`) | `$ man ls` |

---

## 4. La touche Tab — ton meilleur ami

Quand tu tapes le début d'un nom de fichier ou dossier, appuie sur **Tab** pour auto-compléter.

```sh
$ cd Doc[Tab]
$ cd Documents/     # complété automatiquement !
```

Si plusieurs choix existent, appuie **deux fois** sur Tab pour voir la liste.

---

## 5. Les raccourcis clavier utiles

| Raccourci | Action |
|-----------|--------|
| `Tab` | Complète automatiquement un nom |
| `↑` / `↓` | Parcourir l'historique des commandes |
| `Ctrl + C` | Arrête la commande en cours |
| `Ctrl + L` | Nettoie le terminal (= `clear`) |
| `Ctrl + A` | Va au début de la ligne |
| `Ctrl + E` | Va à la fin de la ligne |
| `Ctrl + D` | Ferme le terminal |
| `Ctrl + R` | Chercher une commmande déjà exécutée |

---

## 6. Exemples concrets

```sh
# Afficher où on est
$ pwd
/home/Ilissa

# Lister les fichiers
$ ls
Documents  Bureau  Projets

# Lister avec détails
$ ls -la
total 0
drwxr-xr-x 1 Ilissa 197609 0 Jan 10 14:32 .
drwxr-xr-x 1 Ilissa 197609 0 Jan 10 14:31 ..
drwxr-xr-x 1 Ilissa 197609 0 Jan 10 14:32 Bureau
drwxr-xr-x 1 Ilissa 197609 0 Jan 10 14:32 Documents
drwxr-xr-x 1 Ilissa 197609 0 Jan 10 14:32 Projets

# Se déplacer
$ cd Documents
$ pwd
/home/Ilissa/Documents

# Remonter d'un niveau
$ cd ..
$ pwd
/home/Ilissa

# Aller directement à la racine de son home
$ cd ~
```

---

**[Les exercices](https://github.com/Eihk/Courses/blob/001.Shell/shell/01/01_Exo.md)**
# Courses
---

## Git config

```
git config --global user.name "Username"
git config --global user.email "mail@example.com"
```

```
git config --global --list
```

## SSH Key

1. Generate Key
```
ssh-keygen -t ed25519 -C "mail@example.com"
```
Appuie sur `Entrée` pour le `file location` et `passphrase`.

2. Démarrer ssh
```
eval "$(ssh-agent -s)"
```

3. Ajouter ta clé
```
ssh-add ~/.ssh/id_ed25519
```

4. Copier la clé publique
```
cat ~/.ssh/id_ed25519.pub
```

5. Ajouter à Github
Sur lien https://github.com/settings/keys.
Ajouter une nouvelle clé SSH et colle ta clé SSH.
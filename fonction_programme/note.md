# Programme VS Fonction

Un programme est l'ensemble de ton code, tous tes fichiers.
Une fonction est une partie du programme qui réalise une tâche précise et que l'on peut appeler plusieurs fois.

Exemple:
```c
#include <unistd.h>

int ft_add(int a, int b)
{
	return a + b;
}

int main(void)
{
	ft_add(3, 5);
	return 0;
}
```

Ici, `main()` et `ft_add()` sont des fonctions. Tandis que l'ensemble correspond au `programme`.

# Fonctions

Une fonction ça ressemble à ça en français.
```c
type_retour nom_fonction(parameters)
{
	// code
	return valeur;
}
```

Exemple:
```
int ft_add(int a, int b)
{
	return a + b;
}
```
type_retour 	= int \
nom_fonction 	= ft_add \
parameters 		= (int a, int b) \
valeur 				= a + b

# Type de retour

On peut avoir plusieurs types de retours, comme `int`, `char`, `void`. \
Une fonction retourne une valeur, comme un `int` ou un `char`. Mais il peut aussi ne rien retourner `void`.

Une fonction, c'est une partie du programme qui réalise une tâche précise. \
Si ta fonction doit retourner un entier, tu utilise `int`. \
Si ta fonction doit retourner un caractère, tu utilise `char`. \
Si ta fonction n'a besoin de rien retourner, tu utilise `void`. \

Example:
```c
// Ici la fonction retourne la somme de deux entiers qui est un int,
// Comme on veut récupérer un entier, on utilise int.
int ft_add(int a, int b)
{
	return a + b;
}
```

```c
// Ici la fonction demande à avoir le premier caractère d'un string, et donc un retourne un char.
// Comme on souhaite récupérer un char, on utilise char.
char get_first_char(char* str)
{
	return str[0];
}
```

```c
// Ici la fonction affiche un caractère dans le terminal. Sauf que l'on a pas besoin de retourner une valeur.
// Comme on n'a pas besoin de retourner de valeur, on utilise void.
void ft_putchar(char c)
{
	write(1, &c, 1);
}
```

# Paramètres

Pour savoir de quels paramètres tu as besoin, il faut que tu te poses la question suivante:
- *De quelles informations/données ma fonction a-t-elle besoin pour faire sa tâche ?*
Ces informations/données deviennent les paramètres de ta fonction, et donc ce que tu mets entre `()`.

### Exemple 1 - Aire d'un rectangle

On souhaite faire une fonction qui va calculer l'aire d'un rectangle.
- **Tâche de la fonction**: Calculer l'aire d'une rectangle, qui est un entier
	- Le type de retour est alors un `int`.
- **Paramètres**: Pour calculer une aire, on a besoin de la largeur et de la longueur du rectangle.
	- Les paramètres sont alors une `longueur` et une `largeur`.

```c
int aire_rectangle(int largeur, int longueur)
{
	return largeur * longueur;
}
```

### Exemple 2 - Obtenir le premier caractère d'un string

On souhaite obtenir le premier caractère d'un string.
- **Tâche de la fonction**: Retourner le premier caractère d'un string.
	- Le type de retour est alors un `char`.
- **Paramètres**: Pour obtenir le premier caractère d'un string, il nous faut un string.
	- Le paramètre est alors un `char *`.

```c
char premier_caractre(char* str)
{
	return str[0];
}
```

### Exemple 2 - Affichier un caractère

On souhaite afficher un caractère.
- **Tâche de la fonction**: Afficher un caractère.
	- On n'a pas besoin de retourner quelque chose. Le type de retour est alors un `void`.
- **Paramètres**: Pour afficher un caractère, il nous faut connaître le caractère.
	- Le paramètre est alors un `char`.

```c
void affiche_caractere(char c)
{
	write(1, &c, 1);
}
```

# Paramètres et Arguments

Les paramètres, c'est les valeurs que l'on met dans le prototype de la fonction. Alors que les arguments sont les valeurs "réelles".

```c
int addition(int a, int b);
addition(5, 10);
```

`a` et `b` sont des `paramètres`.
`5` et `10` sont des `arguments`.

# Résumé pour écrire une fonction

1. De quoi ta fonction a-t-elle besoin ?
	- Ce sont les paramètres.
2. Qu'est-ce que la fonction doit produire, doit retourner ?
	- Le type de retour.
	- `int` si un entier
	- `char` si un caractère
	- `char *` si un string
	- `char **` si un tableau de string
	- `void` si rien
	- ...

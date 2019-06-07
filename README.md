# Introduction

Ce readme décrit le fonctionnement technique du dépôt, voir le [site](https://charlie-j.github.io/agreg-fiches/) pour les informations utiles à l'agreg.

# Collaborations

Toutes discussions est la bienvenue au travers des [issues](https://github.com/charlie-j/agreg-fiches/issues), avec le numéro de la leçon concerné dans l'issue. Les commits dans la branche master ne se font que par pull request et review.

# How To Faire une fiche

Une classe formate automatiquement les fichiers.
Le template de base est dans *template.tex*, chaque leçon doit être dans un *numero.tex*. Pour par exemple commencer la leçon 905, on ferait un
```
cp template.tex 905.tex
```

Les références et les développements sont dans un sous dossier, avec un fichier par dev/ref. Il y a une commande pour formatter un developpement, et une pour une référence, cf *dev/dummy.tex* et *refs/dummy.tex*.
Toutes les commandes qui peuvent servir partout doivent être dans le *agregfiche.cls*.

# Makefile

Le makefile permet via ```make all``` de compiler dans *builds/* tous les fichiers latex contenu dans le dossier. Il remplit avant des fichiers *refs.tex* et *dev.tex* qui contiennent tous les dev/refs, ce qui permet alors au *all_refs_dev.tex* de compiler.







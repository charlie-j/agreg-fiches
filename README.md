# Introduction

Ce dépot contient des fiches pour l'agreg, qui ont vocations à être distribuées après que un élève ait présenté à la classe la leçon.

# How To Faire une fiche

Le template de base est dans *template.tex*, chaque leçon doit être dans un *numero.tex*. Pour par exemple commencer la leçon 905, on ferait un
```
cp template.tex 905.tex
```

Les références et les développements sont dans un sous dossier, avec un fichier par dev/ref. Il y a une command pour formatter un developpement, et une pour une référence, cf *dev/dummy.tex* et *refs/dummy.tex*.
Toutes les commandes qui peuvent servir partout doivent être dans le *header.tex*.




#!/bin/bash

# Vérifie qu'un nom de branche a été fourni
if [ -z "$1" ]; then
    echo "Erreur : aucun nom de branche fourni."
    echo "Utilisation : ./create_branch.sh nom_de_branche"
    exit 1
fi

BRANCH_NAME=$1

# Vérifie si on est dans un dépôt Git
if [ ! -d .git ]; then
    echo "Erreur : ce dossier n'est pas un dépôt Git."
    exit 1
fi

# Crée et bascule sur la nouvelle branche
git checkout -b "$BRANCH_NAME"

echo "Branche '$BRANCH_NAME' créée et sélectionnée avec succès."

#!/bin/bash

# Script pour automatiser les commandes Git

# Demande un message de commit
read -p "Message du commit : " message

# Étape 1 : Vérifie si on est dans un repo git
if [ ! -d ".git" ]; then
  echo "❌ Ce dossier n'est pas un dépôt Git."
  exit 1
fi

# Étape 2 : Ajouter les fichiers
echo "➕ Ajout des fichiers..."
git add .

# Étape 3 : Commit
echo "✅ Commit en cours..."
git commit -m "$message"

# Étape 4 : Pousser sur la branche actuelle
branch=$(git rev-parse --abbrev-ref HEAD)
echo "🚀 Envoi vers la branche $branch..."
git push origin "$branch"

echo "🎉 Terminé !"


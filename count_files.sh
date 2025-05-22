#!/bin/bash

# Vérifier si un argument est fourni
if [ $# -eq 0 ]; then
    echo "Usage: $0 <repertoire>"
    exit 1
fi

# Récupérer le nom du répertoire
repertoire="$1"

# Vérifier si le répertoire existe
if [ ! -d "$repertoire" ]; then
    echo "Erreur: Le répertoire '$repertoire' n'existe pas."
    exit 1
fi

# Compter le nombre de fichiers (excluant les répertoires)
# Méthode 1: Utilisation de ls et wc -l
nombre_fichiers=$(ls -1 "$repertoire" 2>/dev/null | wc -l)

# Méthode alternative plus précise (compte seulement les fichiers, pas les dossiers)
# nombre_fichiers=$(find "$repertoire" -maxdepth 1 -type f | wc -l)

# Afficher le résultat
echo "Le dossier $repertoire contient $nombre_fichiers fichier(s)."
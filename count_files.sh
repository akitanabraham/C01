#!/bin/bash
# Script qui compte le nombre de fichiers dans un répertoire

# Vérifier si un répertoire est fourni en argument
if [ $# -eq 0 ]; then
    echo "Usage: $0 <répertoire>"
    exit 1
fi

repertoire=$1

# Vérifier si le répertoire existe
if [ ! -d "$repertoire" ]; then
    echo "Le répertoire $repertoire n'existe pas."
    exit 1
fi

# Compter le nombre de fichiers (pas les répertoires)
nombre_fichiers=$(ls -la "$repertoire" | grep -v '^d' | grep -v 'total' | wc -l)

echo "Le dossier $repertoire contient $nombre_fichiers fichier(s)."
#!/bin/bash
# Script qui affiche l'utilisation du disque

# Afficher l'utilisation globale du disque
echo "Utilisation globale du disque :"
df -h | grep -v "tmpfs" | grep -v "devtmpfs"

# Afficher l'utilisation par répertoire pour le répertoire courant
echo -e "\nUtilisation du répertoire courant :"
du -h --max-depth=1 . | sort -hr


#!/bin/bash
# Script qui affiche les arguments ligne par ligne

# Vérifier s'il y a des arguments
if [ $# -eq 0 ]; then
    echo "Aucun argument fourni."
    exit 1
fi

# Parcourir tous les arguments
numero=1
for arg in "$@"; do
    echo "Argument $numero: $arg"
    numero=$((numero + 1))
done
#!/bin/bash

# Vérifier si les arguments sont fournis
if [ $# -ne 2 ]; then
    echo "Usage: $0 <nom_du_fichier> <chaîne_à_rechercher>"
    exit 1
fi

# Récupérer les arguments
fichier="$1"
chaine="$2"

# Vérifier si le fichier existe
if [ ! -f "$fichier" ]; then
    echo "Erreur: Le fichier '$fichier' n'existe pas."
    exit 1
fi

# Rechercher la chaîne dans le fichier avec grep
if grep -q "$chaine" "$fichier"; then
    # Compter le nombre d'occurrences
    nb_occurrences=$(grep -c "$chaine" "$fichier")
    echo "La chaîne '$chaine' a été trouvée $nb_occurrences fois dans $fichier."
    
else
    echo "La chaîne '$chaine' n'a pas été trouvée dans $fichier."
fi
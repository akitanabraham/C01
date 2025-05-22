#!/bin/bash
# Script calculatrice simple qui prend deux nombres et un opérateur

# Vérifier si les arguments sont fournis
if [ $# -ne 3 ]; then
    echo "Usage: $0 <nombre1> <nombre2> <opérateur>"
    echo "Opérateurs disponibles: +, -, *, /"
    exit 1
fi

nombre1=$1
nombre2=$2
operateur=$3

# Effectuer le calcul selon l'opérateur
case "$operateur" in
    "+")
        resultat=$(( nombre1 + nombre2 ))
        ;;
    "-")
        resultat=$(( nombre1 - nombre2 ))
        ;;
    "*")
        resultat=$(( nombre1 * nombre2 ))
        ;;
    "/")
        # Vérifier la division par zéro
        if [ "$nombre2" -eq 0 ]; then
            echo "Erreur: Division par zéro impossible."
            exit 1
        fi
        # Bash ne gère pas les nombres décimaux, on utilise une astuce
        resultat=$(( nombre1 / nombre2 ))
        # Pour les divisions qui ne sont pas exactes, on ne peut pas faire mieux sans bc
        ;;
    *)
        echo "Opérateur non valide. Utilisez: +, -, *, /"
        exit 1
        ;;
esac

echo "Résultat : $resultat"
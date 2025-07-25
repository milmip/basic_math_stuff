#!/bin/bash

cd "img/"
# Parcourt tous les sous-dossiers du dossier courant
for dir in */; do
    # Supprime le slash final dans le nom du dossier
    folder_name="${dir%/}"
    
    # Vérifie que c'est bien un dossier
    if [ -d "$folder_name" ]; then
        # Fichier de sortie
        output_file="${folder_name}.csv"

        # Liste des fichiers avec l'extension voulue dans le sous-dossier
        ls "$folder_name" -1 > "../img_locations/$output_file"
    fi
done

cd ..
ls "img/" -1 > "img_locations/folder_names.csv"

cd "img_locations"

# Boucle sur tous les fichiers .txt du dossier
for file in *.csv; do
  # Vérifie que c'est bien un fichier
  [ -f "$file" ] || continue

  # Supprime le dernier caractère du fichier
  # Enregistre dans un fichier temporaire, puis remplace l'original
  head -c -1 "$file" > "${file}.tmp" && mv "${file}.tmp" "$file"
done
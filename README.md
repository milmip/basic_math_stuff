Quizlet gratuit et mieux pour les images.

Sentez-vous libre de reprendre cette app pour vous : 
1. cloner le projet
2. mettre dans le dossier img/ toutes les listes que vous voulez (chaque liste est un sous-dossier)
3. pour chaque liste, mettre au format .png toutes les images dans l'ordre alphanumérique. (ex: "001.png" est la question de "002.png")
4. lancer update_folders.sh


Idication : 
1. toutes les listes doivent avoir un nombre paire d'image sinon aïe.
2. pour lancer l'app en local, assurez-vous de vous mettre dans le dossier de l'app, lancer la commande "python3 -m http.server 8000", et d'aller sur "http://localhost:8000/".

Exemple d'un projet sain :
├── beamer.html
├── img
│   ├── capitales
│   │   ├── 001.png
│   │   ├── 002.png
│   │   ├── ...
│   ├── elements
│   │   ├── 001.png
│   │   ├── 002.png
│   │   ├── ...
│   ├── mamiferes
│   │   ├── 001.png
│   │   ├── 002.png
│   │   ├── ...
│   └── fleurs
│       ├── 001.png
│       ├── 002.png
│       ├── ...
├── img_locations
│   ├── capitales.csv
│   ├── elements.csv
│   ├── mamiferes.csv
│   ├── fleurs.csv
│   └── folder_names.csv
├── index.html
└── update_folders.sh

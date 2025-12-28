# C/C++ Compilation Tools

Image Docker avec les outils essentiels pour compiler et déboguer des programmes C/C++.

## 📦 Contenu

- **gcc/g++** : Compilateurs GNU C/C++ (dernière version)
- **make** : Outil d'automatisation de build
- **cmake** : Système de build cross-platform
- **gdb** : Débogueur GNU
- **build-essential** : Outils de développement essentiels

## 🚀 Utilisation
```bash
# Monter le dossier courant et compiler
docker run -v $(pwd):/app ghcr.io/<USERNAME>/c-compile <commande>
# Ouvrir un shell dans le conteneur
docker run -it -v $(pwd):/app ghcr.io/<USERNAME>/c-compile
```
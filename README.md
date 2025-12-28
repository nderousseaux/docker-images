<p align="center">
    <img src="https://skillicons.dev/icons?i=docker,github" height="50" />
</p>

# <div align="center">Docker Images Registry</div>
<div align="center">
    <samp>Dépôt d'images Docker personnalisées, publiées automatiquement sur GitHub Container Registry</samp>
</div>

<hr>

## ℹ️ À propos

Dépôt centralisé d'images Docker. Chaque dossier contient un `Dockerfile`. Un workflow GitHub Actions construit et publie automatiquement les images sur **GHCR** lors d'un push sur `main`.

## 🚀 Utilisation

```bash
# Télécharger une image
docker pull ghcr.io/<USERNAME>/<DOSSIER>:latest

# Lancer un conteneur
docker run -it ghcr.io/<USERNAME>/alpine-tools:latest
docker run -it -v $(pwd):/workspace ghcr.io/<USERNAME>/python-dev:latest
```

**Tags disponibles** : `latest`, `main`, `main-<sha>`

## ⚙️ Configuration

1. Activez les packages GitHub sur votre dépôt
2. Configurez la visibilité des packages dans les settings
3. Pour les images privées, créez un PAT avec `read:packages` :
```bash
echo "VOTRE_TOKEN" | docker login ghcr.io -u <USERNAME> --password-stdin
```

## 🛠️ Images disponibles
- `c-compile`: Outils de compilation C/C++ (gcc, g++, make, cmake)

## 📊 Voir vos images

```
https://github.com/<USERNAME>?tab=packages
```
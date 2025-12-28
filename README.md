<p align="center">
    <img src="https://skillicons.dev/icons?i=docker,github" height="50" />
</p>

# <div align="center">Docker Images Registry</div>
<div align="center">
    <samp>Custom Docker images repository, automatically published to GitHub Container Registry</samp>
</div>

<hr>

## ℹ️ About

Centralized repository of Docker images. Each folder contains a `Dockerfile`. A GitHub Actions workflow automatically builds and publishes images to **GHCR** when pushing to `main`.

## 📦 Creating an Image
Each folder represents a Docker image. When committing to `main`, images are automatically built and published.

The `README.md` in the folder describes the image and its usage.

Images inherit the visibility of the repository (public or private).

## 🚀 Usage

```bash
# Pull an image
docker pull ghcr.io/<USERNAME>/<FOLDER>:latest

# Run a container
docker run -it ghcr.io/<USERNAME>/alpine-tools:latest
docker run -it -v $(pwd):/workspace ghcr.io/<USERNAME>/python-dev:latest
```

**Available tags**: `latest`, `main`, `main-<sha>`

## 🛠️ Available Images
- `c-compile`: C/C++ compilation tools (gcc, g++, make, cmake)
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
- `c-compile`: C/C++ compilation tools (gcc, g++, make, cmake) [see details](./c-compile/README.md)

## ⚡ Helper Script
A `pdock` script simplifies usage:

```bash
# Open shell
pdock c-compile it

# Run command
pdock c-compile exec make
```

Auto-mounts current directory to `/app`. Uses `git config user.name` for `<USERNAME>`, or specify with `-u`. Use `--pull` to ensure the latest image is used.

**Install**: `mv pdock.sh ~/bin/pdock && chmod +x ~/bin/pdock`

## ❓ To improve
It's currently impossible to assign a specific readme to each image in the repository. When Github implements this feature, each image will have its own detailed documentation. Without it, each image contains a basic `README.md` in its folder, describing its contents and usage.
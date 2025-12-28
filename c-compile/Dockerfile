FROM gcc:latest

# Installation des outils de build
RUN apt-get update && apt-get install -y \
    make \
    cmake \
    build-essential \
    gdb \
    && rm -rf /var/lib/apt/lists/*

# Définir le répertoire de travail
WORKDIR /app

# Par défaut, ouvrir un shell
CMD ["/bin/bash"]
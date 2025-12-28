# C/C++ Compilation Tools

Docker image with essential tools for compiling and debugging C/C++ programs.

## 📦 Contents

- **gcc/g++**: GNU C/C++ compilers (latest version)
- **make**: Build automation tool
- **cmake**: Cross-platform build system
- **gdb**: GNU debugger
- **build-essential**: Essential development tools

## 🚀 Usage
```bash
# Mount current directory and compile
docker run -v $(pwd):/app ghcr.io/<USERNAME>/c-compile <command>
# Open a shell in the container
docker run -it -v $(pwd):/app ghcr.io/<USERNAME>/c-compile
```
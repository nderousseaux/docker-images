# C/C++ Compilation Tools

Docker image with essential tools for compiling and debugging C/C++ programs.

## 📦 Contents
- **gcc**: GNU C compiler
- **make**: Build automation tool
- **git**: Version control system
- **valgrind**: Memory debugging and profiling tool
- **bc**: Arbitrary precision calculator
- **vim**: Text editor
- **gdb**: GNU debugger (via unminimize)
- **man pages**: Comprehensive manual pages (POSIX & development)
- **libpcap-dev**: Packet capture library for network programming
- **Additional utilities**: time, psmisc, bsdextrautils

## 🚀 Usage
```bash
# Mount current directory and compile
docker run -v $(pwd):/app ghcr.io/<USERNAME>/c-compile <command>
# Open a shell in the container
docker run -it -v $(pwd):/app ghcr.io/<USERNAME>/c-compile
```

## ⚡ Helper Script
For easier usage, a `pdock` script is available at the root of the project.

```bash
# open a shell
pdock c-compile it

# Run a command
pdock c-compile exec make
```

The script automatically mounts the current directory to `/app` in the container. It will use the list of available images in your git user.name configuration to replace `<USERNAME>`.

If you want to specify a different username, you can use the `--user` option:
```bash
pdock c-compile -u myusername exec make
```

### Installation
```bash
# Move pdock to a directory in your PATH
mv pdock.sh ~/bin/pdock
chmod +x ~/bin/pdock
```
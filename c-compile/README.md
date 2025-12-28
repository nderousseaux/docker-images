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
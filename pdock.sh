#!/bin/zsh
# Script pour utiliser les containers Docker plus facilement

# Détection du username par défaut depuis git
DEFAULT_USERNAME=$(git config user.name | tr '[:upper:]' '[:lower:]' | tr ' ' '-')

# Parse des arguments
USERNAME=$DEFAULT_USERNAME
container=$1
mode=$2
shift 2

# Vérifier si --username ou -u est passé
while [[ $# -gt 0 ]]; do
    case $1 in
        -u|--username)
            USERNAME="$2"
            shift 2
            ;;
        *)
            break
            ;;
    esac
done

if [[ "$mode" == "it" ]]; then
    docker run --rm -it -v $(pwd):/app ghcr.io/$USERNAME/$container "$@"
elif [[ "$mode" == "exec" ]]; then
    docker run --rm -v $(pwd):/app ghcr.io/$USERNAME/$container "$@"
else
    echo "Usage: pdock <container> {it|exec} [--username <user>] [command...]"
    exit 1
fi

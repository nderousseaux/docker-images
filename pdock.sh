#!/bin/zsh
# Script pour utiliser les containers Docker plus facilement

# Détection du username par défaut depuis git
DEFAULT_USERNAME=$(git config user.name | tr '[:upper:]' '[:lower:]' | tr ' ' '-')

# Parse des arguments
USERNAME=$DEFAULT_USERNAME
PULL_FLAG=""

# Vérifier si --username ou -u est passé
while [[ $# -gt 0 ]]; do
    case $1 in
        -u|--username)
            USERNAME="$2"
            shift 2
            ;;
        --pull)
            PULL_FLAG="--pull always"
            shift
            ;;
        *)
            break
            ;;
    esac
done

# Maintenant récupérer container et mode
container=$1
mode=$2

# Vérifier qu'on a assez d'arguments
if [[ $# -lt 2 ]]; then
    echo "Usage: pdock [--username <user>] [--pull] <container> {it|exec} [command...]"
    exit 1
fi

shift 2

if [[ "$mode" == "it" ]]; then
    docker run --rm -it ${=PULL_FLAG} -v $(pwd):/app -w /app ghcr.io/$USERNAME/$container "$@"
elif [[ "$mode" == "exec" ]]; then
    docker run --rm ${=PULL_FLAG} -v $(pwd):/app -w /app ghcr.io/$USERNAME/$container "$@"
else
    echo "Usage: pdock [--username <user>] [--pull] <container> {it|exec} [command...]"
    exit 1
fi

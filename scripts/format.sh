#!/bin/bash

# exit when any command fails
set -e

G='\033[0;32m' # green color
Y='\033[1;33m' # yellow color
N='\033[0m'    # No Color

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"
ROOT="$DIR/.."

echo -e "${Y}Runnning black...${N}"
black -v $ROOT/src/veda
black -v $ROOT/tests

echo -e "${Y}Runnning isort...${N}"
isort "$ROOT/src/veda" "$ROOT/tests/" 
#!/bin/bash

set -xe

VENV_DIR="venv"

python3 -m venv "$VENV_DIR"
source "$VENV_DIR/bin/activate"

pip install --upgrade pip
if [ ! -f requirements.txt ]; then
    echo "Error: requirements.txt not found!"
    exit 1
fi
pip install -r requirements.txt



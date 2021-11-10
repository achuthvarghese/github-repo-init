#!/bin/bash

# Get Repository Name
REPO_NAME=$1

# Check if GitHub CLI is installed
gh --version 2>&1 >/dev/null
GH_IS_AVAILABLE=$?

#  If 0 gh is installed else not (exit)
if [ ! $GH_IS_AVAILABLE -eq 0 ]; then
    echo "GitHub CLI is not available"
    echo "Please view https://github.com/cli/cli#installation for instructions"
    exit 1
fi

# Check Repository Name is provided or not
if [ -z "$1" ]
then
    echo "Repository name not provided"
    exit 1
fi

# Create Repository
gh repo create $REPO_NAME --public --confirm

# Change Directory
cd $REPO_NAME

# Open VS Code
code .

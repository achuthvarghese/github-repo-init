#!/bin/bash

# Get Repository Name
REPO_NAME=$1

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

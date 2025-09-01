#!/bin/bash

# Check if Homebrew is installed or not
if ! command -v brew &> /dev/null; then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zshrc
    eval "$(/opt/homebrew/bin/brew shellenv)"
fi

brew install python

brew install docker

brew install colima

brew install docker-compose docker-credential-helper

colima start

docker build -t web-service .

docker run -p 5000:5000 web-service

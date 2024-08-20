# Install Homebrew
if ! type brew > /dev/null 2>&1; then
    echo "Install Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
else
    echo "Homebrew has already been installed."
fi

# Install Homebrew packages all at once
brew bundle -v --file=../.Brewfile

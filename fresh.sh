#!/bin/sh zsh
echo "Setting up your new Mac... May Tim Cook personally bless you 🧑‍🎄⧹n"

# Check for Homebrew and install if we don't have it
if test ! $(which brew); then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

  echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> $HOME/.zprofile
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# Removes .zshrc from $HOME (if it exists) and symlinks the .zshrc file from the .dotfiles
rm -rf $HOME/.zshrc
echo "Removed .zshrc from $HOME"
ln -s $HOME/.dotfiles/.zshrc $HOME/.zshrc
echo "Symlinked .zshrc from .dotfiles"

# Update Homebrew recipes
brew update

# Install all our dependencies with bundle (See Brewfile)
brew tap homebrew/bundle
brew bundle --file $DOTFILES/Brewfile

# Create a Projects directory and export to PATH
mkdir $HOME/Projects
echo "Created 'Projects' directory"
export PROJ_DIR=$HOME/Projects
echo "Exported '~/Projects' to PATH ($PROJ_DIR)"

# Create a Screenshots directory
mkdir $HOME/Screenshots
echo "Created 'Screenshots' directory"

# Clone GitHub repos
$DOTFILES/clone.sh

# Symlink the Mackup config file to the home directory
ln -s $DOTFILES/.mackup.cfg $HOME/.mackup.cfg

# Set macOS preferences - we will run this last because this will reload the shell
source $DOTFILES/.macos

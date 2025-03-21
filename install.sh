#!/bin/bash

echo "📦 Installing Homebrew..."
if ! command -v brew >/dev/null 2>&1; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

echo "🍺 Restoring Brew packages..."
brew bundle --file=~/dotfiles/Brewfile

echo "🔗 Linking dotfiles..."
ln -sf ~/dotfiles/.zshrc ~/.zshrc
ln -sf ~/dotfiles/.gitconfig ~/.gitconfig
ln -sf ~/dotfiles/.gitignore_global ~/.gitignore_global

echo "🐚 Setting up Antigen..."
mkdir -p ~/.antigen
curl -L git.io/antigen >~/.antigen/antigen.zsh

echo "✅ All done! Restart your terminal."

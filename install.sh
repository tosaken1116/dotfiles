#!/bin/bash

echo "📦 Installing Homebrew..."
if ! command -v brew >/dev/null 2>&1; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Add Homebrew to PATH
if [ -x "/opt/homebrew/bin/brew" ]; then # Apple Silicon
  eval "$(/opt/homebrew/bin/brew shellenv)"
elif [ -x "/usr/local/bin/brew" ]; then # Intel Mac
  eval "$(/usr/local/bin/brew shellenv)"
fi

echo "🍺 Restoring Brew packages..."
brew bundle --file=~/dotfiles/Brewfile

echo "🔗 Linking dotfiles..."
ln -sf ~/dotfiles/.zshrc ~/.zshrc
ln -sf ~/dotfiles/.fzf.zsh ~/.fzf.zsh
ln -sf ~/dotfiles/.p10k.zsh ~/.p10k.zsh
ln -sf ~/dotfiles/.gitconfig ~/.gitconfig
ln -sf ~/dotfiles/.gitignore_global ~/.gitignore_global

echo "🐚 Setting up Antigen..."
mkdir -p ~/.antigen
curl -L git.io/antigen >~/.antigen/antigen.zsh

echo "🐙 Authenticating with GitHub CLI..."
gh auth login

echo "✅ All done! Restart your terminal."

#!/bin/bash
echo "Installing Fancy Terminal Setup..."

# Oh My Zsh installieren
if [ ! -d "$HOME/.oh-my-zsh" ]; then
    echo "Installing Oh My Zsh..."
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
else
    echo "Oh My Zsh already installed."
fi

# Powerlevel10k installieren
echo "Installing Powerlevel10k..."
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# Plugins installieren
echo "Installing Zsh Plugins..."
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Neofetch (macOS)
echo "Installing Neofetch..."
brew install neofetch

# .zshrc anpassen (falls nötig)
echo "Updating .zshrc..."
{
    echo "ZSH_THEME=\"powerlevel10k/powerlevel10k\""
    echo "plugins=(git zsh-autosuggestions zsh-syntax-highlighting)"
    echo "if [ -f /usr/local/bin/neofetch ]; then neofetch; fi"
} >> ~/.zshrc

# NVIM Config kopieren
echo "Setting up Neovim configuration..."
NVIM_CONFIG_DIR="$HOME/.config/nvim"

# Erstelle ~/.config/nvim falls es nicht existiert
mkdir -p $NVIM_CONFIG_DIR

# Kopiere den lokalen nvim-Ordner in das Config-Verzeichnis
cp -r "$(dirname "$0")/nvim/"* $NVIM_CONFIG_DIR

echo "Neovim configuration has been copied to $NVIM_CONFIG_DIR"

# Reload Zsh
echo "Reloading Zsh..."
exec zsh

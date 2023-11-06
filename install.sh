#!/bin/bash

set -euo pipefail
trap 'echo "Error at line $LINENO"' ERR

sudo apt-get update && sudo apt-get -y install zsh
sudo chsh -s $(which zsh) $(whoami)
curl -L https://iterm2.com/shell_integration/zsh -o ~/.iterm2_shell_integration.zsh
curl -sS https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | bash
curl -sS https://starship.rs/install.sh | sh -s -- --yes
NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
cp .zshrc $HOME

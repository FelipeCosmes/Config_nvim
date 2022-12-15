#!/bin/bash

#Baixando o neovim 0.7
sudo apt-get install software-properties-common
sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt-get update
sudo apt-get install neovim

mkdir ~/.config/nvim/
cp init.vim ~/.config/nvim/
cp coc-settings.json ~/.config/nvim/

#Baixando o vim-plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

#json
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
nvm install --lts

#Baixando o NerdFonts
echo "[-] Download fonts [-]"
echo "https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/DroidSansMono.zip"
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/DroidSansMono.zip
unzip DroidSansMono.zip -d ~/.fonts
fc-cache -fv
echo "NerdFonts baixado com sucesso!"

#Baixando as fontes
mkdir ~/.local/share/fonts
cp JetBrainsMono-2.242/fonts/ttf/*ttf /home/felipe/.local/share/fonts/
fc-cache -f -v

#Baixando o Telescope
#Baixando o ripgrep
curl -LO https://github.com/BurntSushi/ripgrep/releases/download/13.0.0/ripgrep_13.0.0_amd64.deb
sudo dpkg -i ripgrep_13.0.0_amd64.deb
#Baixando o fd
sudo apt-get install fd-find

# ----------------------------------
echo "Espero que não tenha dado erro, preguiça de tentar arrumar."
echo "Vlw, flw!"

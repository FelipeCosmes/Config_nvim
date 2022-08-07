#!/bin/bash

mkdir /home/felipe/.config/nvim
mv init.vim ~/.config/nvim
mv coc-settings.json ~/.config/nvim

#Baixando o vim-plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

#Baixando o NerdFonts
echo "[-] Download fonts [-]"
echo "https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/DroidSansMono.zip"
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/DroidSansMono.zip
unzip DroidSansMono.zip -d ~/.fonts
fc-cache -fv
echo "NerdFonts baixado com sucesso!"

#Baixando as fontes
mkdir /home/felipe/.local/share/fonts
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

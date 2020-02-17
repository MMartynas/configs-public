!# /bin/bash

# Get apt prerequisites
apt update 
apt install vim git wget build-essential cmake python3-dev

# Get .vimrc
cd ~
wget https://raw.githubusercontent.com/MMartynas/configs-public/master/vimrc.conf --output-document=.vimrc

# Install Pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
    curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# Get Vim plugins
cd ~/.vim/bundle
git clone https://github.com/tpope/vim-fugitive
git clone https://github.com/tpope/vim-surround
git clone https://github.com/scrooloose/nerdtree
git clone https://github.com/scrooloose/syntastic
git clone https://github.com/vim-airline/vim-airline
git clone https://github.com/altercation/vim-colors-solarized
git clone https://github.com/reedes/vim-lexical
git clone git://github.com/godlygeek/tabular.git

# Setup thesaurus
mkdir -p ~/.vim/thesaurus
cd ~/.vim/thesaurusi
wget https://raw.githubusercontent.com/zeke/moby/master/words.txt --output=document=mthesaur.txt
mkdir -p ~/.vim/spell 
cd ~/.vim/spell
touch en.utf-8.add

# Instal YouCompleteMe
cd ~/.vim/bundle
git clone https://github.com/valloric/youcompleteme
cd ~/.vim/bundle/youcompleteme
python3 install.py --java-completer

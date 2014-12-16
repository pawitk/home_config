if [ -e ~/.vimrc ]; then mv ~/.vimrc ~/.vimrc_bak; fi
if [ -e ~/.vim ]; then mv ~/.vim ~/.vim_bak; fi
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
cp ./dotfiles/.* ~/

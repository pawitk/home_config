# backup dotfiles and folders
if [ -e ~/.vimrc ]; then mv ~/.vimrc ~/.vimrc_bak; fi
if [ -e ~/.vim ]; then mv ~/.vim ~/.vim_bak; fi
if [ -e ~/.tmux.conf ]; then mv ~/.tmux.conf ~/.tmux.conf_bak; fi
if [ -e ~/.tmux ]; then mv ~/.tmux ~/.tmux_bak; fi

# clone plugin managers
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# install tmux plugins from command line
tmux start-server
tmux new-session -d
~/.tmux/plugins/tpm/scripts/install_plugins.sh
tmux kill-server

# install vundle plugins from command line
vim +PluginInstall +qall

# copy new dotfiles to home directory
cp ./dotfiles/.* ~/

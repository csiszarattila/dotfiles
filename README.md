# Install in new machines

~~~
git clone --bare git@github.com:csiszarattila/dotfiles.git $HOME/.dotfiles

alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

dotfiles checkout
~~~

~~~
sudo ln -s ~/bin/omarchy-cmd-screenshot /usr/local/bin
~~~

# Required packages

pacman -S mako

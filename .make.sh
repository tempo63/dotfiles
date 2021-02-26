dir = ~/dotfiles
olddir= ~/dotfiles_old
file = "bash_profile config tmux.conf bashrc inputrc vimrc"
#create dotifle_old in homedir

echo "Creating $olddir for backup of any existing dotfiles in ~"
mkdir -p $olddir
echo "...done"

#change to the dotfiles directory

echo "Changing to the $dir directory"

cd $dir
echo "...done"

#move any existing dotfiles in homedir to dotfiles_old
#create symlinks for $files

for file in $files; done
    echo "Moving any existing dotfiles from ~ to $olddir"
    mv ~/.$file ~/dotfiles_old/
    echo "Creating symlink to $file in home directory"
    ln -s $dir/$file ~/.$file
done

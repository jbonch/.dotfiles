# .dotfiles

My custom configuration files managed using a git bare repository.


## About this setup
This is a much better method than simlinking everything like I used to do. Check out this article for deets: https://www.atlassian.com/git/tutorials/dotfiles

Using this method, you don't have to deal with any simlinks so you can just add files as needed that you want and keep them in the git bare repo you create.

## How to get setup on a new system

**Initialize a bare repository**

`git init --bare ~/.dotfiles`

**Create an alias so in the future we can just type `dotfiles status` or `dotfiles push` etc instead of `git`**

`alias dotfiles='/usr/bin/git --git-dir=~/.dotfiles/ --work-tree=~/'`

**Don't show me untracked files (you don't care about them and you don't want them to show up)**

`dotfiles config --local status.showUntrackedFiles no`

**Add this line to your .bashrc file**

`echo "alias dotfiles='/usr/bin/git --git-dir=~/.dotfiles/ --work-tree=~/'" >> ~/.bashrc`

## How to add new or changed config files

`dotfiles add .vimrc # where .vimrc can be any config file you want tracked`

`dotfiles commit -m "added vimrc"`

`dotfiles push`

## How to setup

Create alias, reload bashrc, put cfg in gitignore, clone the bare repo, checkout and dont show untracked files, then clone vundle for plugins

```bash
echo "alias dotfiles='/usr/bin/git --git-dir=~/.dotfiles/ --work-tree=~/'" >> ~/.bashrc
source ~/.bashrc
echo ".dotfiles" >> ~/.gitignore
git clone --bare git@github.com:jbonch/.dotfiles.git .dotfiles/
dotfiles checkout
dotfiles config --local status.showUntrackedFiles no
```

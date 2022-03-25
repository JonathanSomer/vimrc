# vimrc

```shell
brew update
brew install vim
exec bash -l
mkdir .vim
git clone git@github.com:JonathanSomer/vimrc.git .vim/vimrc 
cp .vim/vimrc/.vimrc .
curl -fLo ~/.vim/autoload/plug.vim --create-dirs     https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
vim .vimrc
```

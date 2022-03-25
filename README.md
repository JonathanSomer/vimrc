# vimrc

```shell
# install the latest vim:
brew update
brew install vim

# clone this repo and move .vimrc to home:
mkdir .vim
git clone git@github.com:JonathanSomer/vimrc.git .vim/vimrc 
cp .vim/vimrc/.vimrc .

# install vim-plug:
curl -fLo ~/.vim/autoload/plug.vim --create-dirs     https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# install YCM dependencies:
apt install build-essential cmake vim-nox python3-dev
python3 .vim/plugged/YouCompleteMe/install.py

exec bash -l
vim .vimrc
```

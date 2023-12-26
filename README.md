# vimconf

personal vim configuration.

## How To Use

```bash
git clone https://github.com/kibaamor/vimconf ~/.vimconf

mv ~/.vimrc ~/.vimrc.bk
echo "source ~/.vimconf/vimconf_plug.vim" >> ~/.vimrc

# install rg (https://github.com/BurntSushi/ripgrep)
sudo apt install ripgrep -y
# install gtags
sudo apt install global -y
# install pygments
pip install pygments
```

## How To Setup Zsh

```bash
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
sed -i "s@plugins=.*@plugins=($plugins zsh-autosuggestions)@" ~/.zshrc
source ~/.zshrc

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
sed -i 's@ZSH_THEME=.*@ZSH_THEME="powerlevel10k/powerlevel10k"@' ~/.zshrc
source ~/.zshrc
```

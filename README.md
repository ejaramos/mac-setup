# mac-setup

# References
* General setup https://sourabhbajaj.com/mac-setup/

* Terminal setup (Clovis) https://medium.com/@Clovis_app/configuration-of-a-beautiful-efficient-terminal-and-prompt-on-osx-in-7-minutes-827c29391961

# Steps
## Some steps...
```
# install brew
https://brew.sh/

# install BetterTouchTool
brew cask install bettertouchtool

# install Sublime
brew cask install sublime-text

chsh -s $(which zsh)

# install iterm2
brew cask install iterm2

# iterm setup
# DO NOT FOLLOW ALL STEPS- just iterm steps
# https://medium.com/@Clovis_app/configuration-of-a-beautiful-efficient-terminal-and-prompt-on-osx-in-7-minutes-827c29391961

# install zsh
brew install zsh zsh-completions
brew install zsh-syntax-highlighting


# install oh-my-zsh
# https://github.com/ohmyzsh/ohmyzsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# install oh-my-zsh theme: powerline10k (faster powerline9k which has great customizability)
# https://github.com/romkatv/powerlevel10k#manual
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>! ~/.zshrc

# install alfred (spotlight search)
brew cask install alfred anaconda

# NOTE: May need to add Anaconda to path post installation ```export PATH="/usr/local/anaconda3/bin:$PATH"```

```

# Apps to install (some through steps above)
* Sublime Text
  * https://packagecontrol.io/packages/Theme%20-%20Gravity
  * Layout
* BetterTouchTool
* iterm2

# Chrome pins
```
* [https://mail.google.com/mail/u/0/#section_query/(in%3Ainbox+OR+label%3A%5Eiim)+is%3Aunread](https://mail.google.com/mail/u/0/#section_query/(in%3Ainbox+OR+label%3A%5Eiim)+is%3Aunread)
* [https://github.com/](https://github.com/)
```

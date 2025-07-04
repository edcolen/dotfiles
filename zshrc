ZSH=$HOME/.oh-my-zsh

# You can change the theme with another one from https://github.com/robbyrussell/oh-my-zsh/wiki/themes
ZSH_THEME="af-magic"

# Useful oh-my-zsh plugins for Le Wagon bootcamps
plugins=(git gitfast last-working-dir common-aliases zsh-syntax-highlighting history-substring-search ssh-agent docker docker-compose zsh-completions zsh-autosuggestions)

# Installing plugins
# git clone https://github.com/zsh-users/zsh-syntax-highlighting.git \
#   ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# git clone https://github.com/zsh-users/zsh-autosuggestions.git \
#   ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# git clone https://github.com/zsh-users/zsh-completions.git \
#   ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-completions


# (macOS-only) Prevent Homebrew from reporting - https://github.com/Homebrew/brew/blob/master/share/doc/homebrew/Analytics.md
export HOMEBREW_NO_ANALYTICS=1
ZSH_DISABLE_COMPFIX=true

# Actually load Oh-My-Zsh
source "${ZSH}/oh-my-zsh.sh"
unalias rm # No interactive rm by default (brought by plugins/common-aliases)

# Load rbenv if installed (To manage your Ruby versions)
export PATH="${HOME}/.rbenv/bin:${PATH}" # Needed for Linux/WSL
type -a rbenv > /dev/null && eval "$(rbenv init -)"

# Load pyenv (To manage your Python versions)
export PATH="${HOME}/.pyenv/bin:${PATH}" # Needed for Linux/WSL
type -a pyenv > /dev/null && eval "$(pyenv init -)" && eval "$(pyenv virtualenv-init -)"

# Load nvm if installed (To manage your Node versions)
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

# Rails and Ruby uses the local `bin` folder to store binstubs.
# So instead of running `bin/rails` like the doc says, just run `rails`
# Same for `./node_modules/.bin` and nodejs
export PATH="./bin:./node_modules/.bin:${PATH}:/usr/local/sbin"

# Load 'lewagon' virtualenv for the Data Bootcamp. You can comment these 2 lines to disable this behavior.
export PYENV_VIRTUALENV_DISABLE_PROMPT=1
pyenv activate lewagon 2>/dev/null && echo "🐍 Loading 'lewagon' virtualenv"

# Store your own aliases in the ~/.aliases file and load the here.
[[ -f "$HOME/.aliases" ]] && source "$HOME/.aliases"

# Encoding stuff for the terminal
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export BUNDLER_EDITOR=/mnt/c/Users/edcol/AppData/Local/Programs/Microsoft\ VS\ Code/Code.exe
# export BROWSER=/mnt/c/Program\ Files/Firefox\ Developer\ Edition/firefox.exe
export BROWSER=/mnt/c/Program\ Files\ (x86)/Microsoft\ Edge/Application/msedge.exe
# sudo /etc/init.d/postgresql start

[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

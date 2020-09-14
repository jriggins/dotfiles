# /usr/bin/env bash

set -e

log() {
  echo "====================================================" 1>&2
  echo $@ 1>&2
  echo "====================================================\n" 1>&2
}

set_mac_os_defaults() {
  log "Updating MacOS defaults"

  source macosdefaults.sh 
}

install_brew_formulae() {
  log "Installing Homebrew Formulae and Casks"

  brew bundle
}

install_vim_plug() {
  # https://github.com/junegunn/vim-plug#neovim

  VIM_PLUG_FILE_PATH="${XDG_DATA_HOME:-$HOME/.local/share}/nvim/site/autoload/plug.vim"

  if [ -f "$VIM_PLUG_FILE_PATH" ]; then
    echo "Vim Plug Already exists"
  else
    echo "Installing Vim Plug"
    curl -fLo "${VIM_PLUG_FILE_PATH}" --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  fi
}

link_dotfiles() {
  log "Linking dotfiles"
  
  stow -vv -d .. -t $HOME env zsh tmux nvim git
}

log "Boostrapping"

cd "$(dirname ${BASH_SOURCE})/bootstrap"

set_mac_os_defaults
install_brew_formulae
link_dotfiles
install_vim_plug

cd -

log "All done!"

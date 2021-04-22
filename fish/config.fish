set -x EDITOR          vim
set -x XDG_DATA_HOME   $HOME/.local/share
set -x XDG_CONFIG_HOME $HOME/.config
set -x XDG_CACHE_HOME  $HOME/.cache
set -x CDPATH          . $HOME/workspace
set -x VIMINIT         ":source $XDG_CONFIG_HOME/vim/vimrc"
fish_vi_key_bindings

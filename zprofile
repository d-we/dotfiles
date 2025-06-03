#since .profile is not read by zsh, we need to use this file for e.g. env-definitions for zsh


# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# include sbin directories in PATH
#PATH=$PATH:/sbin:/usr/sbin

# needed for gem packages to run (e.g. one_gadget)
#PATH=$PATH:/home/dwe/.gem/ruby/3.0.0/bin 

#Needed for powerline to work in tmux
#PATH=$PATH:~/.local/bin

# set vim as default editor
export EDITOR=$(which vim)

# start ssh-agent for ssh-add
# dwe: disabled for macos
#if ! pgrep -u "$USER" ssh-agent > /dev/null; then
#    ssh-agent > "$XDG_RUNTIME_DIR/ssh-agent.env"
#fi
#if [[ ! "$SSH_AUTH_SOCK" ]]; then
#    eval "$(<"$XDG_RUNTIME_DIR/ssh-agent.env")"
#fi

# required for homebrew (add it's PATH etc)
eval "$(/opt/homebrew/bin/brew shellenv)"

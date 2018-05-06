#since .profile is not read by zsh, we need to use this file for e.g. env-definitions for zsh


# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# include sbin directories in PATH
PATH=$PATH:/sbin:/usr/sbin

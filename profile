# ~/.profile: executed by the command interpreter for login shells.
#
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.

# If running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# Set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# Add composer vendor bin if it exists
if [ -d "$HOME/bin" ]; then
    PATH="$HOME/.composer/vendor/bin:$PATH"
fi

# Enable local customizations
if [ -f ~/.profile.local ]; then
    source ~/.profile.local
fi


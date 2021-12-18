#!/usr/bin/env bash
set -e

# ----------------------------------------
# Fish shell
# ----------------------------------------

brew install fish

# Add fish to list of shell
LINE="/usr/local/bin/fish"
grep -q "$LINE" /etc/shells || sudo bash -c 'echo /usr/local/bin/fish >> /etc/shells'

# TODO Run chsh -s /usr/local/bin/fish
# TODO Run fish_config the prompt

# Install/Update fisher
curl https://git.io/fisher --create-dirs -sLo ~/.config/fish/functions/fisher.fish

brew install fasd
fish -c "fisher add oh-my-fish/plugin-fasd"

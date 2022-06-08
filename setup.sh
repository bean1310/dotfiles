#!/usr/bin/env bash

DATE=`date -I date`

ZSHRC="${HOME}/.zshrc"

if [[ -f $ZSHRC ]]; then
    echo "Detected .zshrc"
    echo "Rename .zshrc to .zshrc.${DATE}.bak"
    mv $ZSHRC "${ZSHRC}.$DATE.bak"
fi

ln -s "$PWD/.zshrc" $ZSHRC

TMUX_CONF="${HOME}/.tmux.conf"

if [[ -f $TMUX_CONF ]]; then
    echo "Detected .tmux.conf"
    echo "Rename .tmux.conf to .tmux.conf.${DATE}.bak"
    mv $TMUX_CONF "${TMUX_CONF}.$DATE.bak"
fi

ln -s "$PWD/.tmux.conf" $TMUX_CONF

# Install some softwares for each environments.

## set up for macOS
if [[ "$OSTYPE" == darwin* ]]; then
    brew install zsh-autosuggestions nvim 
fi

## set up for Debian based distributions
if [[ -f /etc/debian_version ]]; then
    # TODO
fi

echo "---------------------"
echo ""
echo "SETUP SCRIPT HAS FINISHED"
echo ""
echo "---------------------"


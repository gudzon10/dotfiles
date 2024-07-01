#!/usr/bin/bash

SOURCE_DIR=$(dirname $0)

cp "$SOURCE_DIR"/.bash_logout $HOME/.bash_logout
cp "$SOURCE_DIR"/.bashconfrc $HOME/.bashconfrc

if ! grep -q '. ~/.bashconfrc' "$HOME"/.bashrc; then
    cp "$SOURCE_DIR"/.bashconfrc  $HOME/
    echo -e "\nif [ -f ~/.bashconfrc ]; then\n    . ~/.bashconfrc\nfi" >> "$HOME"/.bashrc
fi

if [ ! -f "$HOME/.bash-git-prompt/gitprompt.sh" ]; then
    git clone https://github.com/magicmonty/bash-git-prompt.git ~/.bash-git-prompt --depth=1
fi

echo "Please, reload .bashrc manually:  source $HOME/.bashrc"

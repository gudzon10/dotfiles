#!/usr/bin/bash

SOURCE_DIR=$(dirname $0)

# if ! grep -q 'tac "$HISTFILE"' "$HOME"/.bash_logout; then
#     cat "$SOURCE_DIR"/.bash_logout >> $HOME/.bash_logout
# fi
cp "$SOURCE_DIR"/.bash_logout $HOME/.bash_logout
cp "$SOURCE_DIR"/.bashconfrc $HOME/.bashconfrc

if ! grep -q '. ~/.bashconfrc' "$HOME"/.bashrc; then
    cp "$SOURCE_DIR"/.bashconfrc  $HOME/
    echo -e "\nif [ -f ~/.bashconfrc ]; then\n    . ~/.bashconfrc\nfi" >> "$HOME"/.bashrc
fi

echo "Please, reload .bashrc manually:  source $HOME/.bashrc"

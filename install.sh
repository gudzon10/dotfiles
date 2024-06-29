#!/usr/bin/bash

SOURCE_DIR=$(dirname $0)

if ! grep -q 'tac "$HISTFILE"' "$HOME"/.bash_logout; then
    cat "$SOURCE_DIR"/.bash_logout >> $HOME/.bash_logout
fi

if ! grep -q '. ~/.bashconfrc' "$HOME"/.bashrc; then
    cp "$SOURCE_DIR"/.bashconfrc  $HOME/
    echo -e "\nif [ -f ~/.bashconfrc ]; then\n    . ~/.bashconfrc\nfi" >> "$BASHRC_FILE"
fi

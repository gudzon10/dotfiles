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

## Обновления по крону.
#!/bin/bash

# if [ ! -f /var/log/system-update.log ]; then
#     sudo touch /var/log/system-update.log
#     sudo chown "$USER":"$USER" /var/log/system-update.log
# fi
# sudo cp "$SOURCE_DIR"/fullupgrade /usr/local/bin/fullupgrade

# # Получаем содержимое задачи
# CRON_TASK="0 * * * * /usr/local/bin/fullupgrade"
# # Проверяем, есть ли уже задача в cron-таблице
# if ! crontab -l | grep -q "/usr/local/bin/fullupgrade"; then
#   # Если нет, добавляем задачу
#   (crontab -l; echo "$CRON_TASK") | crontab -
# fi


echo "Please, reload .bashrc manually:  source $HOME/.bashrc"

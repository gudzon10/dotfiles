

# Удаляем дубликаты в истории при каждом логауте
tac "$HISTFILE" | awk '!x[$0]++' | tac > /tmp/tachist && cat /tmp/tachist > "$HISTFILE"

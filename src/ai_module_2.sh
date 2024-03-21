#!/bin/bash

index=0

while IFS= read -r line
do
  index=$((index + 1))
  if [ "$index" = "$line" ]; then
    echo 'ЗАГРУЗКА МОДУЛЯ ПРОШЛА УСПЕШНО: '"$line"
  else
    echo 'ОШИБКА!ОШИБКА!ОШИБКА!ОШИБКА! При загрузке модуля произошла ошибка: '"$index"
    exit 1
  fi
done < important_data_for_ai_module_2.txt

if [ "$index" = 5 ]; then
  echo 'ВСЕ МОДУЛИ ЗАГРУЖЕНЫ УСПЕШНО'
else
  echo 'ОШИБКА!ОШИБКА!ОШИБКА!ОШИБКА! Недостаточно нескольких модулей: '"$index"
  exit 1
fi

echo 'МОДУЛЬ 2 УСПЕШНО ЗАГРУЖЕН!'
exit 0



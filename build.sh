#!/bin/bash

if [ -z "$1" ]; then
    echo "Ошибка имени файла"
    exit 1
fi

NAME="$1"

if [ ! -f "${NAME}.asm" ]; then
    echo "Ошибка: файл ${NAME}.asm не найден"
    exit 1
fi

echo "Компиляция ${NAME}.asm"
nasm -f elf64 "${NAME}.asm" -o "${NAME}.o"

if [ $? -ne 0 ]; then
    echo "Ошибка компиляции"
    exit 1
fi

echo "Линковка ${NAME}.o"
ld -o "${NAME}" "${NAME}.o"

if [ $? -ne 0 ]; then
    echo "Ошибка линковки"
    exit 1
fi

rm *.o

echo "Запуск программы"
./"${NAME}"

RET=$?

echo "Код возврата программы ${RET}"

exit $RET

#!/bin/bash

#Запрос исходной и целевой папки:
read -p "Введите исходную папку: " source_directory
read -p "Введите целевую папку: " target_directory

# Запрос на получение расширения файлов
read -p "Введите расширение файлов для копирования (Без точки): " file_extension 

<<<<<<< HEAD
#Проверка наличия исходной и целевой директории

=======
#Проверка существования исходной  и целевой директории
>>>>>>> upstream/main
	if [ ! -d "$source_directory" ]; then
	echo "Директория '$source_directory' не существует или недоступна."
	exit 1
	fi
<<<<<<< HEAD

# Проверка существования целевой директории

=======
# Проверка существования целевой директории
>>>>>>> upstream/main
	if [ ! -d "$target_directory" ]; then
	echo "Директория '$target_directory' не существует или недоступна."
	exit 1
	fi
<<<<<<< HEAD
=======

# Проверка, есть ли файлы с указанным расширением в исходной директории
	matching_files=$(find "$source_directory" -maxdepth 1 -type f -name
	"*.$file_extension")
	if [ -z "$matching_files" ]; thenecho "В директории '$source_directory' нет файлов с расширением
	'.$file_extension'."
	exit 1
	fi
>>>>>>> upstream/main
# Копирование файлов с указанным расширением в целевую директорию
for file in $matching_files; do
cp "$file" "$target_directory"
echo "Скопирован файл: $file"
done
echo "Готово."

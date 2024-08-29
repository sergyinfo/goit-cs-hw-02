#!/bin/bash

# Визначення файлу логів
logfile="website_availability.log"

# Визначення файлу з сайтами; використання параметру командного рядка або використання значення за замовчуванням
sites_file="${1:-sites.txt}"

# Перевірка наявності файлу з сайтами
if [ ! -f "$sites_file" ]; then
    echo "Error: File '$sites_file' not found."
    exit 1
fi

# Очищення файлу логів перед запуском
echo "" > $logfile

# Функція для перевірки сайту за допомогою curl
check_site() {
    response=$(curl -s -o /dev/null -w "%{http_code}" -L $1)
    if [ "$response" -eq 200 ]; then
        echo "$1 is UP"
        echo "$1 is UP" >> $logfile
    else
        echo "$1 is DOWN"
        echo "$1 is DOWN" >> $logfile
    fi
}

# Читання кожного сайту з файлу та їх перевірка
while IFS= read -r site; do
    if [[ ! -z "$site" ]]; then
        check_site $site
    fi
done < "$sites_file"

# Вивід інформації про збереження результатів у файл
echo "Results have been logged in $logfile"

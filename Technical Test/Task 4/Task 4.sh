# Memeriksa jumlah argumen yang diberikan sudah benar
if [ $# -ne 2 ]; then
    echo "Usage: $0 <source_directory> <backup_directory>"
    exit 1
fi

# Mendefinisikan parameter
source_directory=$1
backup_directory=$2
backup_name=$(basename "$source_directory")_$(date +%Y%m%d%H%M%S).tar.gz

# Script Membuat backup dan mengompresinya
tar -czf "$backup_directory/$backup_name" -C "$source_directory" .

# Menghapus backup yang lebih lama dari 7 hari
find "$backup_directory" -type f -name "*.tar.gz" -mtime +7 -exec rm {} \;
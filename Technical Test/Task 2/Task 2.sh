# Memeriksa jumlah argumen yang diberikan sudah benar
if [ $# -ne 2 ]; then
    echo "Usage: $0 <source_directory> <backup_location>"
    exit 1
fi

# Mendefinisikan parameter
source_directory=$1
backup_location=$2
backup_name=$(basename "$source_directory")_$(date +%Y%m%d%H%M%S).tar.gz

# Script Membuat backup dan mengompresinya
tar -czf "$backup_location/$backup_name" -C "$source_directory"
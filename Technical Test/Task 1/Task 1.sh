# Script memeriksa jumlah argumen yang diberikan sudah benar
if [ $# -ne 2 ]; then
    echo "Usage: $0 <directory> <extension>"
    exit 1
fi

# Mendefinisikan parameter
directory=$1
extension=$2

# Mencari file dengan ekstensi yang diberikan di dalam direktori
find "$directory" -type f -name "*.$extension
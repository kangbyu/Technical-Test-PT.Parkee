# Memeriksa jumlah argumen yang diberikan sudah benar
if [ $# -ne 1 ]; then
    echo "Usage: $0 <directory>"
    exit 1
fi

# Mendefinisikan parameter
directory=$1

# Membuat direktori baru jika belum ada
if [ ! -d "$directory" ]; then
    mkdir -p "$directory"
fi

# Membuat SSH key pair
ssh-keygen -t rsa -b 2048 -f "$directory/id_rsa" -N ""
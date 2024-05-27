# Memeriksa jumlah argumen yang diberikan sudah benar
if [ $# -ne 3 ]; then
    echo "Usage: $0 <source_directory> <username> <server_ip>"
    exit 1
fi

# Mendefinisikan parameter
source_directory=$1
username=$2
server_ip=$3

# Menyalin direktori menggunakan command scp
scp -r "$source_directory" "$username@$server_ip:~"
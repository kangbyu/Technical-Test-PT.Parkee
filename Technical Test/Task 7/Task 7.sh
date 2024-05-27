# Memeriksa jumlah argumen yang diberikan sudah benar
if [ $# -ne 3 ]; then
    echo "Usage: $0 <public_key_file> <username> <server_ip>"
    exit 1
fi

# Mendefinisikan parameter
public_key_file=$1
username=$2
server_ip=$3

# Script Command Menyalin public key ke server remote
ssh-copy-id -i "$public_key_file" "$username@$server_ip"
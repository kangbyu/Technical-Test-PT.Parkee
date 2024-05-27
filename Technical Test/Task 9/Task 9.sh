# Memeriksa jumlah argumen yang diberikan sudah benar
if [ $# -ne 2 ]; then
    echo "Usage: $0 <public_key_file> <username>"
    exit 1
fi

# Mendefinisikan parameter
public_key_file=$1
username=$2

# Menambahkan public key ke file authorized_keys
cat "$public_key_file" >> /home/"$username"/.ssh/authorized_keys
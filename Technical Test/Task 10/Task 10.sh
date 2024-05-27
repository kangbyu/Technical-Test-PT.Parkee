# Memeriksa jumlah argumen yang diberikan sudah benar
if [ $# -ne 2 ]; then
    echo "Usage: $0 <unique_string> <username>"
    exit 1
fi

# Mendefinisikan parameter
unique_string=$1
username=$2
authorized_keys_file="/home/$username/.ssh/authorized_keys"

# Membuat backup dari authorized_keys sebelum mengedit
cp "$authorized_keys_file" "$authorized_keys_file.bak"

# Menghapus key yang mengandung value string unik
grep -v "$unique_string" "$authorized_keys_file.bak" > "$authorized_keys_file"

# Menetapkan izin file kembali dengan sesuai
chown "$username":"$username" "$authorized_keys_file"
chmod 600 "$authorized_keys_file"
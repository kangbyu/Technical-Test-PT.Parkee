# Memeriksa jumlah argumen yang diberikan Sudah benar
if [ $# -ne 2 ]; then
    echo "Usage: $0 <username> <server_ip>"
    exit 1
fi

# Mendefinisikan parameter
username=$1
server_ip=$2

# Mencoba melakukan koneksi SSH ke server Remote
if ssh -o BatchMode=yes -o ConnectTimeout=5 "$username@$server_ip" exit; then
    echo "Connection to $server_ip successful"
else
    echo "Connection to $server_ip failed"
fi
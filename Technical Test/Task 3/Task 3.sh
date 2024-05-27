# Memeriksa jumlah argumen yang diberikan sudah benar
if [ $# -ne 1 ]; then
    echo "Usage: $0 <directory>"
    exit 1
fi

# Mendefinisikan parameter
directory=$1

# Menampilkan header tabel
echo -e "File\tLines\tWords\tCharacters"

# Loop melalui setiap file teks di direktori
for file in "$directory"/*.txt; do
    if [ -f "$file" ]; then
    # Menghitung statistik menggunakan wc (word count)
        stats=$(wc "$file")
        echo -e "$file\t$stats"
    fi
done
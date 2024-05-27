# Menampilkan informasi sistem dasar
echo "Hostname: $(hostname)"
echo "Current Time: $(date)"
echo "Logged in Users: $(who | wc -l)"
# Kondisi 1 : Mengizinkan semua koneksi keluar
sudo iptables -P OUTPUT ACCEPT

# Kondisi 2 : Mengizinkan koneksi masuk ke port 22 (SSH), 80 (HTTP), dan 443 (HTTPS)
sudo iptables -A INPUT -p tcp --dport 22 -j ACCEPT
sudo iptables -A INPUT -p tcp --dport 80 -j ACCEPT
sudo iptables -A INPUT -p tcp --dport 443 -j ACCEPT

# Kondisi 3 : Menolak semua koneksi masuk lainnya
sudo iptables -P INPUT DROP
sudo iptables -P FORWARD DROP

# Menyimpan aturan iptables
sudo iptables-save > /etc/iptables/rules.v4
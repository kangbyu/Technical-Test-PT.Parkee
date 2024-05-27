# Memeriksa penggunaan disk pada VM/Server
disk_usage=$(df / | grep / | awk '{ print $5 }' | sed 's/%//g')

# Mengirim notifikasi jika penggunaan disk di atas 80% melalui Email
if [ "$disk_usage" -gt 80 ]; then
    echo "Disk usage is above 80%: $disk_usage%" | mail -s "Disk Usage Alert" bayuanggarajkt@gmail.com
fi
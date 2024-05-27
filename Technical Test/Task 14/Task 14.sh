# Membuat File Log untuk menyimpan Log Penggunaan CPU
log_file="/var/log/cpu_usage.log"

# Script Memeriksa penggunaan CPU rata-rata dalam 1 menit
cpu_usage=$(awk '{u+=$1} END {print u/NR}' /proc/loadavg)

# Mencatat penggunaan CPU jika di atas 75%
if (( $(echo "$cpu_usage > 0.75" | bc -l) )); then
    echo "$(date): CPU usage is above 75%: $cpu_usage" >> "$log_file"
fi
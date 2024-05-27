# Membuat File untuk menyimpan file Log
log_file="/var/log/update_script.log"

# Memeriksa package manager yang tersedia
if command -v apt > /dev/null; then
    package_manager="apt"
elif command -v yum > /dev/null; then
    package_manager="yum"
else
    echo "No compatible package manager found."
    exit 1
fi

{
    echo "Starting update: $(date)"
# Script Pembaruan sistem menggunakan apt atau yum
    if [ "$package_manager" == "apt" ]; then
        apt update && apt upgrade -y
    elif [ "$package_manager" == "yum" ]; then
        yum update -y
    fi
    echo "Update finished: $(date)"
} >> "$log_file"
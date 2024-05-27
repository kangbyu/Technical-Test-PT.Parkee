# Memeriksa jumlah argumen yang diberikan sudah benar
if [ $# -ne 1 ]; then
    echo "Usage: $0 <service_name>"
    exit 1
fi

# Mendefinisikan parameter
service_name=$1
service_file="/etc/systemd/system/$service_name.service"

# Membuat unit Service file systemd
cat <<EOL | sudo tee "$service_file"
[Unit]
Description=Simple Python Service

[Service]
ExecStart=/usr/bin/python3 /path/to/your_script.py
Restart=always
User=nobody
Group=nogroup

[Install]
WantedBy=multi-user.target
EOL

# Command Memulai dan mengaktifkan service
sudo systemctl daemon-reload
sudo systemctl start "$service_name"
sudo systemctl enable "$service_name"
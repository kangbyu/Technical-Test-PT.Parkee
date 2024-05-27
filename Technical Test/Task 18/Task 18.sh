# Mendefinisikan direktori konfigurasi jaringan
netplan_config="/etc/netplan/01-netcfg.yaml"

# Membuat file konfigurasi netplan IP Address, Gateway, DNS
sudo tee "$netplan_config" > /dev/null <<EOL
network:
    version: 2
    ethernets:
        eth0:
            dhcp4: no
            addresses: [192.168.1.100/24]
            gateway4: 192.168.1.1
            nameservers:
                addresses: [8.8.8.8, 8.8.4.4]
EOL

# Menerapkan konfigurasi netplan
sudo netplan apply
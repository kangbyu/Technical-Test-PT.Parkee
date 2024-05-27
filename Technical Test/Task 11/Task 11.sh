# Memeriksa jumlah argumen yang diberikan sudah benar
if [ $# -ne 2 ]; then
    echo "Usage: $0 <action> <service>"
    exit 1
fi

# Mendefinisikan parameter
action=$1
service=$2

# Manage Service meliputi Memulai, menghentikan, atau memeriksa status service
case $action in
    start)
        sudo systemctl start "$service"
        ;;
    stop)
        sudo systemctl stop "$service"
        ;;
    status)
        sudo systemctl status "$service"
        ;;
    *)
        echo "Invalid action. Use start, stop, or status."
        exit 1
        ;;
esac
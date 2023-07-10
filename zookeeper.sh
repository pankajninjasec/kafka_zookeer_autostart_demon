
#!/bin/sh
### BEGIN INIT INFO
# Provides:          zookeeper
# Required-Start:    $remote_fs $syslog
# Required-Stop:     $remote_fs $syslog
# Default-Start:     2 3 4 5
# Default-Stop:      0 1 6
# Short-Description: Apache ZooKeeper
# Description:       Apache ZooKeeper is a centralized service for maintaining configuration information, naming, providing distributed synchronization, and providing group services.
### END INIT INFO

case "$1" in
    start)
        /home/ubuntu/kafka/bin/zookeeper-server-start.sh -daemon /home/ubuntu/kafka/config/zookeeper.properties
        ;;
    stop)
        /home/ubuntu/kafka/bin/zookeeper-server-stop.sh
        ;;
    restart)
        /home/ubuntu/kafka/bin/zookeeper-server-stop.sh
        sleep 5
        /home/ubuntu/kafka/bin/zookeeper-server-start.sh -daemon /home/ubuntu/kafka/config/zookeeper.properties
        ;;
    *)
        echo "Usage: $0 {start|stop|restart}"
        exit 1
        ;;
esac
exit 0

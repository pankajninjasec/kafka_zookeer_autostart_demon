
#!/bin/sh
### BEGIN INIT INFO
# Provides:          kafka
# Required-Start:    $remote_fs $syslog zookeeper
# Required-Stop:     $remote_fs $syslog zookeeper
# Default-Start:     2 3 4 5
# Default-Stop:      0 1 6
# Short-Description: Apache Kafka
# Description:       Apache Kafka is a distributed streaming platform.
### END INIT INFO

case "$1" in
    start)
        /home/ubuntu/kafka/bin/kafka-server-start.sh -daemon /home/ubuntu/kafka/config/server.properties
        ;;
    stop)
        /home/ubuntu/kafka/bin/kafka-server-stop.sh
        ;;
    restart)
        /home/ubuntu/kafka/bin/kafka-server-stop.sh
        sleep 5
        /home/ubuntu/kafka/bin/kafka-server-start.sh -daemon /home/ubuntu/kafka/config/server.properties
        ;;
    *)
        echo "Usage: $0 {start|stop|restart}"
        exit 1
        ;;
esac
exit 0

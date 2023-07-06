
# Auto demon for zookeerper and kafka
### create the daemon processes for ZooKeeper and Kafka , Now deploy kafka on ubuntu or any linux server


#### Save this script as /etc/init.d/zookeeper, and make it executable using chmod +x /etc/init.d/zookeeper
#### Save this script as /etc/init.d/kafka, and make it executable using chmod +x /etc/init.d/kafka

` sudo update-rc.d zookeeper defaults `
` sudo update-rc.d kafka defaults `

` sudo service zookeeper start `
` sudo service zookeeper stop `
` sudo service zookeeper restart `

` sudo service kafka start `
` sudo service kafka stop `
` sudo service kafka restart `



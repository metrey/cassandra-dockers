Required configuration files
============================

cassandra.yaml: main Cassandra configuration file
logback.xml: logback configuration file for Cassandra server

```
// Before map configuration, need to copy first
docker cp cassandra:/etc/cassandra/. ./config/

// then map the volume config
```


Optional configuration files
============================

cassandra-topology.properties: used by PropertyFileSnitch



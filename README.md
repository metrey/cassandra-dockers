

### CQL

```
// List keyspace
DESCRIBE KEYSPACES;

SELECT keyspace_name FROM system_schema.keyspaces;

// Choose a keyspace
USE <KEYSPACE_NAME>;

// List tables in keyspace
DESCRIBE TABLES IN test_keyspace;

SELECT table_name FROM system_schema.tables WHERE keyspace_name = 'test_keyspace';


```

### Tools

CQL Editor
- https://dbeaver.io/ (only enterprise)
- https://cassandra.apache.org/doc/stable/cassandra/tools/index.html


Editor and Data Analyst
- https://zeppelin.apache.org/


## Operator
Kubernetes
- https://k8ssandra.io/
- https://cassandra.apache.org/_/blog/Cassandra-on-Kubernetes-A-Beginners-Guide.html
## Access Data via CQL


```java
import com.datastax.oss.driver.api.core.CqlSession;
import com.datastax.oss.driver.api.core.cql.SimpleStatement;
import com.datastax.oss.driver.api.core.cql.ResultSet;

public class CassandraExample {
    public static void main(String[] args) {
        try (CqlSession session = CqlSession.builder()
                .withKeyspace("my_keyspace") // Optional: set a default keyspace
                .build()) {

            String query = "SELECT * FROM my_table WHERE partition_key = ? AND sort_key LIKE ?";
            SimpleStatement statement = SimpleStatement.builder(query)
                    .addPositionalValue("partitionKeyValue")
                    .addPositionalValue("sortPrefix%")
                    .build();

            ResultSet resultSet = session.execute(statement);

            resultSet.forEach(row -> {
                // Process each row
                System.out.println(row.toString());
            });
        }
    }
}
```
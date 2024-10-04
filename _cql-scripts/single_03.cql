create keyspace bezkoder with replication={'class':'SimpleStrategy', 'replication_factor':1};

use bezkoder;
 
CREATE TABLE tutorial(
   id timeuuid PRIMARY KEY,
   title text,
   description text,
   published boolean
);

-- To create SASI index need to enable in cassandra.yaml : sasi_indexes_enabled: true
-- Custom index that has options with mode: CONTAINS along with analyzer_class to make case_sensitive effective.
-- SASI indexes are experimental and are not recommended for production use.
CREATE CUSTOM INDEX idx_title ON bezkoder.tutorial (title) USING 'org.apache.cassandra.index.sasi.SASIIndex' WITH OPTIONS = {'mode': 'CONTAINS', 'analyzer_class': 'org.apache.cassandra.index.sasi.analyzer.NonTokenizingAnalyzer', 'case_sensitive': 'false'};
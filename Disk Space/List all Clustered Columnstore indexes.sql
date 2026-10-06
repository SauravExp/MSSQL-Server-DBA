-- List all Clustered Columnstore indexes

-- This script lists all clustered columnstore indexes in the current database, and includes the DROP INDEX statement

SELECT OBJECT_SCHEMA_NAME(object_id) SchemaName,
       OBJECT_NAME(object_id) TableName,
       i.name AS IndexName,
       i.type_desc IndexType,
       'DROP INDEX ' + i.name + ' ON ' + OBJECT_SCHEMA_NAME(object_id) + '.' + OBJECT_NAME(object_id)
FROM sys.indexes AS i
WHERE is_hypothetical = 0
      AND i.index_id <> 0
      AND i.type_desc = 'CLUSTERED COLUMNSTORE';


SELECT c.name  AS 'ColumnName', t.name AS 'TableName'
FROM sys.columns c
JOIN sys.tables t ON c.object_id = t.object_id
WHERE   
	c.name LIKE 'Is Estimate Account'
	OR c.name LIKE 'Cleared Date'
ORDER BY TableName, ColumnName;
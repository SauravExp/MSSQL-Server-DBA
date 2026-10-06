-- Set all databases to simple recovery

-- This script generates SQL to set the Recovery Model to Simple for all databases

SELECT name AS DatabaseName,
       recovery_model_desc AS RecoveryModel,
       'ALTER DATABASE [' + name + '] SET RECOVERY SIMPLE;' AS SQL
FROM sys.databases
WHERE recovery_model_desc <> 'SIMPLE';


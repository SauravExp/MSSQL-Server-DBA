-- Set all databases to 140 compatibility level

-- This script sets all user databases to Compatibility Level 140 (SQL Server 2017)

EXEC dbo.sp_foreachdb @command = 'ALTER DATABASE ? SET COMPATIBILITY_LEVEL = 140',
                      @user_only = 1;


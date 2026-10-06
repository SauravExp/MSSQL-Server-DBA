-- Set all databases to 160 compatibility level

-- This script sets all user databases to Compatibility Level 160 (SQL Server 2022)

EXEC dbo.sp_foreachdb @command = 'ALTER DATABASE ? SET COMPATIBILITY_LEVEL = 160',
                      @user_only = 1;


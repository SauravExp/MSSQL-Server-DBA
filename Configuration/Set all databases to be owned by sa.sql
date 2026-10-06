-- Set all databases to be owned by sa

-- This script sets the owner of all user databases to 'sa'

EXEC dbo.sp_ineachdb @command = 'EXEC dbo.sp_changedbowner @loginame = N''sa'', @map = false',
                     @user_only = 1;


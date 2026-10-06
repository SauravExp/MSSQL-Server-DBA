-- Set all databases to CHECKSUM page verification

-- This script sets the PAGE_VERIFY property for all user databases to CHECKSUM, which is the recommended value

EXEC dbo.sp_foreachdb @command = 'ALTER DATABASE ? SET PAGE_VERIFY CHECKSUM WITH NO_WAIT',
                      @user_only = 1;


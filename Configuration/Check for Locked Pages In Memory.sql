-- Check for Locked Pages In Memory

-- This script reveals the current status of Lock Pages in Memory for the instance

SELECT CASE sql_memory_model_desc
           WHEN 'CONVENTIONAL' THEN
               'LPIM not enabled'
           WHEN 'LOCK_PAGES' THEN
               'LPIM enabled'
           ELSE
               sql_memory_model_desc
       END
FROM sys.dm_os_sys_info;



   # Local config
   *.env
   config*.json

   # Build artifacts
   bin/
   obj/

   # System files
   Thumbs.db
   .DS_Store
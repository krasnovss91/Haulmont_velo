-- $Id$
-- Description:

DECLARE @DB varchar(50);
SELECT @DB = '[' + DB_NAME() + ']';
DECLARE @SQLString VARCHAR(200);
SET @SQLString = '  ALTER DATABASE ' + @DB + ' SET READ_COMMITTED_SNAPSHOT on WITH ROLLBACK IMMEDIATE' ;
EXEC(@SqlString);
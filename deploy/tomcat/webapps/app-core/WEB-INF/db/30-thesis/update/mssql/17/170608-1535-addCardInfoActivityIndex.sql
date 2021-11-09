-- $Id$
-- Description:
IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name = 'IDX_WF_CARD_INFO_ACTIVITY_EXECUTION_ID' AND object_id = OBJECT_ID('WF_CARD_INFO'))
    BEGIN
       CREATE NONCLUSTERED INDEX IDX_WF_CARD_INFO_ACTIVITY_EXECUTION_ID
        ON WF_CARD_INFO ([JBPM_EXECUTION_ID],[ACTIVITY])
        INCLUDE ([ID],[NAME],[CREATE_TS],[CREATED_BY],[DELETE_TS],[DELETED_BY],[CARD_ID],[CARD_INFO_TYPE],[USER_ID],[DESCRIPTION]);
    END;
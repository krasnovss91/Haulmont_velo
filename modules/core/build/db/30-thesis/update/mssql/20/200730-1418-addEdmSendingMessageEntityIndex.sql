if exists (select NAME from SYSINDEXES where NAME = 'IDX_EDM_SENDING_ENTITY_ID') DROP INDEX IDX_EDM_SENDING_ENTITY_ID ON TS_EDM_SENDING^
create index IDX_EDM_SENDING_MESSAGE_ENTITY on TS_EDM_SENDING(EDM_MESSAGE_ID, EDM_ENTITY_ID)^
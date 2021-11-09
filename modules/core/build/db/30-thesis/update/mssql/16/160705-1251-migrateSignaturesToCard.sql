-- $Id$
-- Description:

drop index IDX_WF_CARD_DELETE_TS_CARD_TYPE_INCL_ALL on WF_CARD;
alter table WF_CARD add SIGNATURES varchar(max);
^

create nonclustered index IDX_WF_CARD_DELETE_TS_CARD_TYPE_INCL_ALL on WF_CARD (DELETE_TS ASC, CARD_TYPE ASC)
include ([ID],
	[CREATE_TS],
	[DELETED_BY],
	[VERSION],
	[PROC_ID],
	[JBPM_PROCESS_ID],
	[STATE],
	[DESCRIPTION],
	[SIGNATURES],
	[CREATOR_ID],
	[SUBSTITUTED_CREATOR_ID],
	[PARENT_CARD_ID],
	[HAS_ATTACHMENTS],
	[HAS_ATTRIBUTES],
	[CATEGORY_ID]);

update WF_CARD set SIGNATURES = d.SIGNATURES from WF_CARD c join DF_DOC d on c.ID = d.CARD_ID where d.SIGNATURES is not null;

drop index IDX_DF_DOC_IS_TEMPLATE_VERSION_OF_ID_ARCHIVED_INCL_ALL on DF_DOC;
^

create nonclustered index IDX_DF_DOC_IS_TEMPLATE_VERSION_OF_ID_ARCHIVED_INCL_ALL on DF_DOC (IS_TEMPLATE ASC, VERSION_OF_ID ASC, ARCHIVED ASC)
include ([CARD_ID],
	[CREATE_DATE],
	[TEMPLATE_NAME],
	[DOC_KIND_ID],
	[CATEGORY_ID],
	[ORGANIZATION_ID],
	[NUMBER],
	[DATETIME],
	[DATE],
	[OWNER_ID],
	[DEPARTMENT_ID],
	[COMMENT],
	[INCOME_DATE],
	[INCOME_NO],
	[OUTCOME_DATE],
	[OUTCOME_NO],
	[DOC_OFFICE_DOC_KIND],
	[RESOLUTION],
	[REGISTERED],
	[DOUBLE_REGISTERED],
	[FINISH_DATE_PLAN],
	[OVERDUE],
	[GLOBAL],
	[REG_NO],
	[REG_DATE],
	[ENDORSEMENT_START_DATE],
	[ENDORSEMENT_END_DATE],
	[APPROVAL_DATE],
	[ENDORSED],
	[AVAILABLE_FOR_ALL],
	[THEME],
	[IMPORTED],
	[PROJECT_ID],
	[POST_TRACKING_NUMBER]);

alter table DF_DOC drop column SIGNATURES;
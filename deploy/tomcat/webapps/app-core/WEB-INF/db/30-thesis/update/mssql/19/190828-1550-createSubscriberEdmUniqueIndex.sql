-- $Id$

drop index IDX_SUBSCR_CONTR_UNIQ on TS_SUBSCRIBER_EDM^
create unique index IDX_SUBSCR_BOX_OPERATOR_UNIQ on TS_SUBSCRIBER_EDM (BOX_ID, OPERATOR_EDM_ID, DELETE_TS)^
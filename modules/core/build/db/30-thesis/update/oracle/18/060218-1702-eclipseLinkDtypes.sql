alter table SEC_USER add DTYPE varchar2(50 char)^
alter table WF_PROC_ROLE add DTYPE varchar2(50 char)^
alter table WF_CARD_ROLE add DTYPE varchar2(50 char)^
alter table SEC_GROUP add DTYPE varchar2(50 char)^
alter table SYS_ENTITY_STATISTICS add DTYPE varchar2(50 char)^
alter table WF_CARD_COMMENT add DTYPE varchar2(50 char)^
alter table REPORT_REPORT add DTYPE varchar2(50 char)^
alter table WF_USER_GROUP add DTYPE varchar2(50 char)^
alter table WF_PROC add DTYPE varchar2(50 char)^
alter table SEC_USER_SUBSTITUTION add DTYPE varchar2(50 char)^
alter table WF_DEFAULT_PROC_ACTOR add DTYPE varchar2(50 char)^
alter table SEC_ROLE add DTYPE varchar2(50 char)^

update SEC_USER set dtype = '10'^
update WF_PROC_ROLE set dtype = '10'^
update WF_CARD_ROLE set dtype = '10'^
update SEC_GROUP set dtype = '10'^
update SYS_ENTITY_STATISTICS set dtype = '10'^
update WF_CARD_COMMENT set dtype = '10'^
update REPORT_REPORT set dtype = '10'^
update WF_USER_GROUP set dtype = '10'^
update WF_PROC set dtype = '10'^
update SEC_USER_SUBSTITUTION set dtype = '10'^
update WF_DEFAULT_PROC_ACTOR set dtype = '10'^
update SEC_ROLE set dtype = '10'^
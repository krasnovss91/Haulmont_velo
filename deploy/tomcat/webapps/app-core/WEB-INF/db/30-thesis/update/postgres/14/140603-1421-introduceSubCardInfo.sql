alter table DF_RESOLUTION_WAITING_COMPLETE rename to DF_SUB_CARD_INFO;

alter table DF_SUB_CARD_INFO drop constraint FK_DF_RESOLUTION_WAITING_COMPLETE_CARD;
alter table DF_SUB_CARD_INFO drop constraint FK_DF_RESOLUTION_WAITING_COMPLETE_CARD_TO_RESOLUTION;
alter table DF_SUB_CARD_INFO drop constraint FK_DF_RESOLUTION_WAITING_ASSIGNMENT;

alter table DF_SUB_CARD_INFO rename column CARD_ID to SUB_CARD_ID;
alter table DF_SUB_CARD_INFO rename column CARD_TO_RESOLUTION_ID to PARENT_CARD_ID;
alter table DF_SUB_CARD_INFO rename column ASSIGNMENT_ID to RESOLUTION_ASSIGNMENT_ID;
alter table DF_SUB_CARD_INFO add SUB_CARD_CREATED_ASSIGNMENT_ID uuid;

alter table DF_SUB_CARD_INFO add constraint FK_DF_SUB_CARD_INFO_SUB_CARD foreign key (SUB_CARD_ID) references WF_CARD(ID);
alter table DF_SUB_CARD_INFO add constraint FK_DF_SUB_CARD_INFO_PARENT_CARD foreign key (PARENT_CARD_ID) references WF_CARD(ID);
alter table DF_SUB_CARD_INFO add constraint FK_DF_SUB_CARD_INFO_RESOLUTION_ASSIGNMENT foreign key (RESOLUTION_ASSIGNMENT_ID) references WF_ASSIGNMENT(ID);
alter table DF_SUB_CARD_INFO add constraint FK_DF_SUB_CARD_INFO_SUB_CARD_CREATED_ASSIGNMENT foreign key (SUB_CARD_CREATED_ASSIGNMENT_ID) references WF_ASSIGNMENT(ID);
alter table DF_SUB_CARD_INFO add TYPE varchar(1);

update DF_SUB_CARD_INFO set TYPE='R';
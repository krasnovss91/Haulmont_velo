-- begin VELO3_EX_TASK
alter table VELO3_EX_TASK add constraint FK_VELO3_EX_TASK_ON_VELO_DETAIL foreign key (VELO_DETAIL_ID) references VELO3_VELO_DETAIL(ID)^
alter table VELO3_EX_TASK add constraint FK_VELO3_EX_TASK_ON_TASK foreign key (TASK_ID) references WF_CARD(ID) on delete CASCADE^
create index IDX_VELO3_EX_TASK_ON_VELO_DETAIL on VELO3_EX_TASK (VELO_DETAIL_ID)^
-- end VELO3_EX_TASK

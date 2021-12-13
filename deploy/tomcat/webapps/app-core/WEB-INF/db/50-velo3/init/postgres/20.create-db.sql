-- begin VELO3_EX_TASK
alter table VELO3_EX_TASK add constraint FK_VELO3_EX_TASK_ON_TASK foreign key (TASK_ID) references WF_CARD(ID) on delete CASCADE^
-- end VELO3_EX_TASK
-- begin VELO3_VELO_DETAIL
alter table VELO3_VELO_DETAIL add constraint FK_VELO3_VELO_DETAIL_ON_EX_TASK foreign key (EX_TASK_ID) references VELO3_EX_TASK(TASK_ID)^
create index IDX_VELO3_VELO_DETAIL_ON_EX_TASK on VELO3_VELO_DETAIL (EX_TASK_ID)^
-- end VELO3_VELO_DETAIL

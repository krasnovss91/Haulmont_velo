alter table VELO3_EX_TASK rename column velo_detail_id to velo_detail_id__u48969 ;
alter table VELO3_EX_TASK drop constraint FK_VELO3_EX_TASK_ON_VELO_DETAIL ;
drop index IDX_VELO3_EX_TASK_ON_VELO_DETAIL ;

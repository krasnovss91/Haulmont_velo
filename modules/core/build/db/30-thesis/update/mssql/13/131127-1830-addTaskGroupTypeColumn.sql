--$Id$
--$Description: add column for task group type and updates it

alter table TM_TASK_GROUP add TASK_GROUP_TYPE varchar(50)^

update TM_TASK_GROUP set TASK_GROUP_TYPE = 'Protocol' where date_meet is not null;
update TM_TASK_GROUP set TASK_GROUP_TYPE = 'TaskGroup' where date_meet is null^
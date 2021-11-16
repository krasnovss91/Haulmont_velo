-- begin VELO3_VELO_DETAIL
create table VELO3_VELO_DETAIL (
    ID uuid,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    NAME varchar(255),
    COST integer,
    AVAILABLE_FOR_ORDER boolean,
    EX_TASK_ID uuid,
    --
    primary key (ID)
)^
-- end VELO3_VELO_DETAIL
-- begin VELO3_EX_TASK
create table VELO3_EX_TASK (
    TASK_ID uuid,
    --
    AMOUNT integer,
    --
    primary key (TASK_ID)
)^
-- end VELO3_EX_TASK

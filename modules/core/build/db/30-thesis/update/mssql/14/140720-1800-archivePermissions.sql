--$Id$

insert into sec_permission(id, create_ts, created_by, version, permission_type, target, value, role_id) values
(newid(), current_timestamp, 'system', 1, 20, 'df$OfficeFile:update', 1, '505d37f4-fdfc-11e3-88a0-b7bba68b44d2');

insert into sec_permission(id, create_ts, created_by, version, permission_type, target, value, role_id) values
(newid(), current_timestamp, 'system', 1, 10, 'ts$ArchivedSimpleDoc.browse', 0, '0c018061-b26f-4de2-a5be-dff348347f93'); -- admin
insert into sec_permission(id, create_ts, created_by, version, permission_type, target, value, role_id) values
(newid(), current_timestamp, 'system', 1, 10, 'ts$ArchivedContract.browse', 0, '0c018061-b26f-4de2-a5be-dff348347f93'); -- admin
insert into sec_permission(id, create_ts, created_by, version, permission_type, target, value, role_id) values
(newid(), current_timestamp, 'system', 1, 10, 'ts$ArchivistWorkplace', 0, '0c018061-b26f-4de2-a5be-dff348347f93'); -- admin
-- $Id$
-- Description:
DELETE FROM WF_CALENDAR WHERE WORK_DAY IS NOT NULL^

INSERT INTO WF_CALENDAR (ID, CREATE_TS, CREATED_BY, WORK_DAY) VALUES (newid(), now(), 'admin', {d '2019-01-01'})^
INSERT INTO WF_CALENDAR (ID, CREATE_TS, CREATED_BY, WORK_DAY) VALUES (newid(), now(), 'admin', {d '2019-01-02'})^
INSERT INTO WF_CALENDAR (ID, CREATE_TS, CREATED_BY, WORK_DAY) VALUES (newid(), now(), 'admin', {d '2019-01-03'})^
INSERT INTO WF_CALENDAR (ID, CREATE_TS, CREATED_BY, WORK_DAY) VALUES (newid(), now(), 'admin', {d '2019-01-04'})^
INSERT INTO WF_CALENDAR (ID, CREATE_TS, CREATED_BY, WORK_DAY) VALUES (newid(), now(), 'admin', {d '2019-01-07'})^
INSERT INTO WF_CALENDAR (ID, CREATE_TS, CREATED_BY, WORK_DAY) VALUES (newid(), now(), 'admin', {d '2019-01-08'})^

INSERT INTO WF_CALENDAR (ID, CREATE_TS, CREATED_BY, WORK_DAY, WORK_START_TIME, WORK_END_TIME) VALUES (newid(), now(), 'admin', {d '2019-02-22'},{t '09:00:00'},{t '13:00:00'})^
INSERT INTO WF_CALENDAR (ID, CREATE_TS, CREATED_BY, WORK_DAY, WORK_START_TIME, WORK_END_TIME) VALUES (newid(), now(), 'admin', {d '2019-02-22'},{t '14:00:00'},{t '17:00:00'})^

INSERT INTO WF_CALENDAR (ID, CREATE_TS, CREATED_BY, WORK_DAY, WORK_START_TIME, WORK_END_TIME) VALUES (newid(), now(), 'admin', {d '2019-03-07'},{t '09:00:00'},{t '13:00:00'})^
INSERT INTO WF_CALENDAR (ID, CREATE_TS, CREATED_BY, WORK_DAY, WORK_START_TIME, WORK_END_TIME) VALUES (newid(), now(), 'admin', {d '2019-03-07'},{t '14:00:00'},{t '17:00:00'})^
INSERT INTO WF_CALENDAR (ID, CREATE_TS, CREATED_BY, WORK_DAY) VALUES (newid(),  now(), 'admin', {d '2019-03-08'})^

INSERT INTO WF_CALENDAR (ID, CREATE_TS, CREATED_BY, WORK_DAY, WORK_START_TIME, WORK_END_TIME) VALUES (newid(), now(), 'admin', {d '2019-04-30'},{t '09:00:00'},{t '13:00:00'})^
INSERT INTO WF_CALENDAR (ID, CREATE_TS, CREATED_BY, WORK_DAY, WORK_START_TIME, WORK_END_TIME) VALUES (newid(), now(), 'admin', {d '2019-04-30'},{t '14:00:00'},{t '17:00:00'})^

INSERT INTO WF_CALENDAR (ID, CREATE_TS, CREATED_BY, WORK_DAY) VALUES (newid(), now(), 'admin', {d '2019-05-01'})^
INSERT INTO WF_CALENDAR (ID, CREATE_TS, CREATED_BY, WORK_DAY) VALUES (newid(), now(), 'admin', {d '2019-05-02'})^
INSERT INTO WF_CALENDAR (ID, CREATE_TS, CREATED_BY, WORK_DAY) VALUES (newid(), now(), 'admin', {d '2019-05-03'})^
INSERT INTO WF_CALENDAR (ID, CREATE_TS, CREATED_BY, WORK_DAY, WORK_START_TIME, WORK_END_TIME) VALUES (newid(), now(), 'admin', {d '2019-05-08'},{t '09:00:00'},{t '13:00:00'})^
INSERT INTO WF_CALENDAR (ID, CREATE_TS, CREATED_BY, WORK_DAY, WORK_START_TIME, WORK_END_TIME) VALUES (newid(), now(), 'admin', {d '2019-05-08'},{t '14:00:00'},{t '17:00:00'})^
INSERT INTO WF_CALENDAR (ID, CREATE_TS, CREATED_BY, WORK_DAY) VALUES (newid(), now(), 'admin', {d '2019-05-09'})^
INSERT INTO WF_CALENDAR (ID, CREATE_TS, CREATED_BY, WORK_DAY) VALUES (newid(), now(), 'admin', {d '2019-05-10'})^

INSERT INTO WF_CALENDAR (ID, CREATE_TS, CREATED_BY, WORK_DAY, WORK_START_TIME, WORK_END_TIME) VALUES (newid(), now(), 'admin', {d '2019-06-11'},{t '09:00:00'},{t '13:00:00'})^
INSERT INTO WF_CALENDAR (ID, CREATE_TS, CREATED_BY, WORK_DAY, WORK_START_TIME, WORK_END_TIME) VALUES (newid(), now(), 'admin', {d '2019-06-11'},{t '14:00:00'},{t '17:00:00'})^
INSERT INTO WF_CALENDAR (ID, CREATE_TS, CREATED_BY, WORK_DAY) VALUES (newid(), now(), 'admin', {d '2019-06-12'})^

INSERT INTO WF_CALENDAR (ID, CREATE_TS, CREATED_BY, WORK_DAY) VALUES (newid(), now(), 'admin', {d '2019-11-04'})^

INSERT INTO WF_CALENDAR (ID, CREATE_TS, CREATED_BY, WORK_DAY, WORK_START_TIME, WORK_END_TIME) VALUES (newid(), now(), 'admin', {d '2019-12-31'},{t '09:00:00'},{t '13:00:00'})^
INSERT INTO WF_CALENDAR (ID, CREATE_TS, CREATED_BY, WORK_DAY, WORK_START_TIME, WORK_END_TIME) VALUES (newid(), now(), 'admin', {d '2019-12-31'},{t '14:00:00'},{t '17:00:00'})^
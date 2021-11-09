-- $Id$
-- Description:
DELETE FROM WF_CALENDAR WHERE WORK_DAY IS NOT NULL^

INSERT INTO WF_CALENDAR (ID, CREATE_TS, CREATED_BY, WORK_DAY) VALUES (newid(), CURRENT_TIMESTAMP, 'admin', TO_DATE('2019-01-01', 'YYYY-MM-DD'))^
INSERT INTO WF_CALENDAR (ID, CREATE_TS, CREATED_BY, WORK_DAY) VALUES (newid(), CURRENT_TIMESTAMP, 'admin', TO_DATE('2019-01-02', 'YYYY-MM-DD'))^
INSERT INTO WF_CALENDAR (ID, CREATE_TS, CREATED_BY, WORK_DAY) VALUES (newid(), CURRENT_TIMESTAMP, 'admin', TO_DATE('2019-01-03', 'YYYY-MM-DD'))^
INSERT INTO WF_CALENDAR (ID, CREATE_TS, CREATED_BY, WORK_DAY) VALUES (newid(), CURRENT_TIMESTAMP, 'admin', TO_DATE('2019-01-04', 'YYYY-MM-DD'))^
INSERT INTO WF_CALENDAR (ID, CREATE_TS, CREATED_BY, WORK_DAY) VALUES (newid(), CURRENT_TIMESTAMP, 'admin', TO_DATE('2019-01-07', 'YYYY-MM-DD'))^
INSERT INTO WF_CALENDAR (ID, CREATE_TS, CREATED_BY, WORK_DAY) VALUES (newid(), CURRENT_TIMESTAMP, 'admin', TO_DATE('2019-01-08', 'YYYY-MM-DD'))^

INSERT INTO WF_CALENDAR (ID, CREATE_TS, CREATED_BY, WORK_DAY, WORK_START_TIME, WORK_END_TIME) VALUES (newid(), CURRENT_TIMESTAMP, 'admin',TO_DATE('2019-02-22', 'YYYY-MM-DD'),TO_TIMESTAMP('09:00:00', 'HH24:MI:SS'),TO_TIMESTAMP('13:00:00', 'HH24:MI:SS'))^
INSERT INTO WF_CALENDAR (ID, CREATE_TS, CREATED_BY, WORK_DAY, WORK_START_TIME, WORK_END_TIME) VALUES (newid(), CURRENT_TIMESTAMP, 'admin',TO_DATE('2019-02-22', 'YYYY-MM-DD'),TO_TIMESTAMP('14:00:00', 'HH24:MI:SS'),TO_TIMESTAMP('17:00:00', 'HH24:MI:SS'))^

INSERT INTO WF_CALENDAR (ID, CREATE_TS, CREATED_BY, WORK_DAY, WORK_START_TIME, WORK_END_TIME) VALUES (newid(), CURRENT_TIMESTAMP, 'admin',TO_DATE('2019-03-07', 'YYYY-MM-DD'),TO_TIMESTAMP('09:00:00', 'HH24:MI:SS'),TO_TIMESTAMP('13:00:00', 'HH24:MI:SS'))^
INSERT INTO WF_CALENDAR (ID, CREATE_TS, CREATED_BY, WORK_DAY, WORK_START_TIME, WORK_END_TIME) VALUES (newid(), CURRENT_TIMESTAMP, 'admin',TO_DATE('2019-03-07', 'YYYY-MM-DD'),TO_TIMESTAMP('14:00:00', 'HH24:MI:SS'),TO_TIMESTAMP('17:00:00', 'HH24:MI:SS'))^
INSERT INTO WF_CALENDAR (ID, CREATE_TS, CREATED_BY, WORK_DAY) VALUES (newid(), CURRENT_TIMESTAMP, 'admin', TO_DATE('2019-03-08', 'YYYY-MM-DD'))^

INSERT INTO WF_CALENDAR (ID, CREATE_TS, CREATED_BY, WORK_DAY, WORK_START_TIME, WORK_END_TIME) VALUES (newid(), CURRENT_TIMESTAMP, 'admin',TO_DATE('2019-04-30', 'YYYY-MM-DD'),TO_TIMESTAMP('09:00:00', 'HH24:MI:SS'),TO_TIMESTAMP('13:00:00', 'HH24:MI:SS'))^
INSERT INTO WF_CALENDAR (ID, CREATE_TS, CREATED_BY, WORK_DAY, WORK_START_TIME, WORK_END_TIME) VALUES (newid(), CURRENT_TIMESTAMP, 'admin',TO_DATE('2019-04-30', 'YYYY-MM-DD'),TO_TIMESTAMP('14:00:00', 'HH24:MI:SS'),TO_TIMESTAMP('17:00:00', 'HH24:MI:SS'))^

INSERT INTO WF_CALENDAR (ID, CREATE_TS, CREATED_BY, WORK_DAY) VALUES (newid(), CURRENT_TIMESTAMP, 'admin', TO_DATE('2019-05-01', 'YYYY-MM-DD'))^
INSERT INTO WF_CALENDAR (ID, CREATE_TS, CREATED_BY, WORK_DAY) VALUES (newid(), CURRENT_TIMESTAMP, 'admin', TO_DATE('2019-05-02', 'YYYY-MM-DD'))^
INSERT INTO WF_CALENDAR (ID, CREATE_TS, CREATED_BY, WORK_DAY) VALUES (newid(), CURRENT_TIMESTAMP, 'admin', TO_DATE('2019-05-03', 'YYYY-MM-DD'))^
INSERT INTO WF_CALENDAR (ID, CREATE_TS, CREATED_BY, WORK_DAY, WORK_START_TIME, WORK_END_TIME) VALUES (newid(), CURRENT_TIMESTAMP, 'admin',TO_DATE('2019-05-08', 'YYYY-MM-DD'),TO_TIMESTAMP('09:00:00', 'HH24:MI:SS'),TO_TIMESTAMP('13:00:00', 'HH24:MI:SS'))^
INSERT INTO WF_CALENDAR (ID, CREATE_TS, CREATED_BY, WORK_DAY, WORK_START_TIME, WORK_END_TIME) VALUES (newid(), CURRENT_TIMESTAMP, 'admin',TO_DATE('2019-05-08', 'YYYY-MM-DD'),TO_TIMESTAMP('14:00:00', 'HH24:MI:SS'),TO_TIMESTAMP('17:00:00', 'HH24:MI:SS'))^
INSERT INTO WF_CALENDAR (ID, CREATE_TS, CREATED_BY, WORK_DAY) VALUES (newid(), CURRENT_TIMESTAMP, 'admin', TO_DATE('2019-05-09', 'YYYY-MM-DD'))^
INSERT INTO WF_CALENDAR (ID, CREATE_TS, CREATED_BY, WORK_DAY) VALUES (newid(), CURRENT_TIMESTAMP, 'admin', TO_DATE('2019-05-10', 'YYYY-MM-DD'))^

INSERT INTO WF_CALENDAR (ID, CREATE_TS, CREATED_BY, WORK_DAY, WORK_START_TIME, WORK_END_TIME) VALUES (newid(), CURRENT_TIMESTAMP, 'admin',TO_DATE('2019-06-11', 'YYYY-MM-DD'),TO_TIMESTAMP('09:00:00', 'HH24:MI:SS'),TO_TIMESTAMP('13:00:00', 'HH24:MI:SS'))^
INSERT INTO WF_CALENDAR (ID, CREATE_TS, CREATED_BY, WORK_DAY, WORK_START_TIME, WORK_END_TIME) VALUES (newid(), CURRENT_TIMESTAMP, 'admin',TO_DATE('2019-06-11', 'YYYY-MM-DD'),TO_TIMESTAMP('14:00:00', 'HH24:MI:SS'),TO_TIMESTAMP('17:00:00', 'HH24:MI:SS'))^
INSERT INTO WF_CALENDAR (ID, CREATE_TS, CREATED_BY, WORK_DAY) VALUES (newid(), CURRENT_TIMESTAMP, 'admin', TO_DATE('2019-06-12', 'YYYY-MM-DD'))^

INSERT INTO WF_CALENDAR (ID, CREATE_TS, CREATED_BY, WORK_DAY) VALUES (newid(), CURRENT_TIMESTAMP, 'admin', TO_DATE('2019-11-04', 'YYYY-MM-DD'))^

INSERT INTO WF_CALENDAR (ID, CREATE_TS, CREATED_BY, WORK_DAY, WORK_START_TIME, WORK_END_TIME) VALUES (newid(), CURRENT_TIMESTAMP, 'admin',TO_DATE('2019-12-31', 'YYYY-MM-DD'),TO_TIMESTAMP('09:00:00', 'HH24:MI:SS'),TO_TIMESTAMP('13:00:00', 'HH24:MI:SS'))^
INSERT INTO WF_CALENDAR (ID, CREATE_TS, CREATED_BY, WORK_DAY, WORK_START_TIME, WORK_END_TIME) VALUES (newid(), CURRENT_TIMESTAMP, 'admin',TO_DATE('2019-12-31', 'YYYY-MM-DD'),TO_TIMESTAMP('14:00:00', 'HH24:MI:SS'),TO_TIMESTAMP('17:00:00', 'HH24:MI:SS'))^
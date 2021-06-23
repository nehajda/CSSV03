-- Set Vars
:setvar SCHEMANAME CONNECT_MS
:setvar SCHEMAOWNER CONNECT_MS
:setvar SCHEMAAPPUSER CONNECT_MS_APP

-- Drop Tables 
DROP TABLE $(SCHEMANAME).MS_MSG_TAG;
DROP TABLE $(SCHEMANAME).MS_TAG;
DROP TABLE $(SCHEMANAME).MS_RPLYBL_MSGS;

DROP TABLE $(SCHEMANAME).MS_MSG_EVNT;
DROP TABLE $(SCHEMANAME).MS_MSG_HDR;
DROP TABLE $(SCHEMANAME).MS_MSG_BDY;

DROP TABLE $(SCHEMANAME).MS_RCRD_EVNT;
DROP TABLE $(SCHEMANAME).MS_RCRD_HDR;
DROP TABLE $(SCHEMANAME).MS_BLK_EVNT;
DROP TABLE $(SCHEMANAME).MS_BLK_HDR;
DROP TABLE $(SCHEMANAME).MS_VER; 
DROP TABLE $(SCHEMANAME).MS_BLK_INGSTN_EVNT;
DROP TABLE $(SCHEMANAME).MS_BLK_INGSTN;
DROP TABLE $(SCHEMANAME).MS_INGSTN_RCRD;
DROP TABLE $(SCHEMANAME).MS_USER_DATA;
DROP TABLE $(SCHEMANAME).MS_SRVC;

-- DROP INDEXES
DROP INDEX $(SCHEMANAME)_MSG_TAG_TAGID_I ON $(SCHEMANAME).MS_MSG_TAG 
DROP INDEX $(SCHEMANAME)_MS_MSG_HDR_I ON $(SCHEMANAME).MS_MSG_HDR

DROP INDEX $(SCHEMANAME)_MS_BLK_HDR_I ON $(SCHEMANAME).MS_BLK_HDR
DROP INDEX $(SCHEMANAME)_MS_BLK_EVNT_I ON $(SCHEMANAME).MS_BLK_EVNT

DROP INDEX $(SCHEMANAME)_MS_RCRD_HDR_I ON $(SCHEMANAME).MS_RCRD_HDR
DROP INDEX $(SCHEMANAME)_MS_RCRD_EVNT_I ON $(SCHEMANAME).MS_RCRD_EVNT

-- Drop Stored Procedures 

DROP PROCEDURE $(SCHEMANAME).ms_get_events
DROP PROCEDURE $(SCHEMANAME).ms_get_message_by_id
DROP PROCEDURE $(SCHEMANAME).ms_post_events
DROP PROCEDURE $(SCHEMANAME).ms_post_messages
DROP PROCEDURE $(SCHEMANAME).purgeMessages
DROP PROCEDURE $(SCHEMANAME).prepareToPurge

DROP SCHEMA $(SCHEMANAME)

-- Drop Users 
 DROP USER $(SCHEMAOWNER)
 DROP USER $(SCHEMAAPPUSER)

:setvar SCHEMANAME CONNECT_MS

CREATE NONCLUSTERED INDEX $(SCHEMANAME)_MSG_TAG_TAGID_I ON $(SCHEMANAME).MS_MSG_TAG (TAG_ID) INCLUDE (MSG_HDR_ID)
-- CREATE NONCLUSTERED INDEX $(SCHEMANAME)_MS_MSG_HDR_I ON $(SCHEMANAME).MS_MSG_HDR(CRNT_STATUS,SRVC_ID,MSG_TYPE,MSG_ID,DOC_ID,MSG_SNDR,DOC_TMSTMP,D_DUP_KEY,CRTD_AT)

CREATE NONCLUSTERED INDEX $(SCHEMANAME)_MS_BLK_HDR_I ON $(SCHEMANAME).MS_BLK_HDR(BLK_HDR_ID,CRNT_STATUS,SRVC_TYPE,SRVC_NAME,BLK_ID,BLK_SRC,BLK_TYPE,CRTD_AT,LST_UPDT_AT)
CREATE NONCLUSTERED INDEX $(SCHEMANAME)_MS_BLK_EVNT_I ON $(SCHEMANAME).MS_BLK_EVNT(BLK_HDR_ID,CRTD_AT)

CREATE NONCLUSTERED INDEX $(SCHEMANAME)_MS_RCRD_HDR_I ON $(SCHEMANAME).MS_RCRD_HDR(CRNT_STATUS,SEQ_NO,LST_TASK,BLK_HDR_ID,RCRD_ID,CRTD_AT,LST_UPDT_AT)
CREATE NONCLUSTERED INDEX $(SCHEMANAME)_MS_RCRD_EVNT_I ON $(SCHEMANAME).MS_RCRD_EVNT(CRTD_AT)
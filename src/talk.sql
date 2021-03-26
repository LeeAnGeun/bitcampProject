DROP TABLE TALK
CASCADE CONSTRAINTS;

DROP SEQUENCE SEQ_TALK;

CREATE TABLE TALK(
    TALKSEQ NUMBER CONSTRAINT PK_TALK_01 PRIMARY KEY,
    TALKCONTENT VARCHAR2(4000),
    TALKDATE DATE,
    MEMBERNUM NUMBER,
    CONSTRAINT FK_TALK_01 FOREIGN KEY(MEMBERNUM) 
    REFERENCES MEMBERS(MEMBERNUM),
    CARDSEQ NUMBER,
    CONSTRAINT FK_TALK_02 FOREIGN KEY(CARDSEQ) 
    REFERENCES CARD(CARDSEQ)
);

CREATE SEQUENCE SEQ_TALK
START WITH 1
INCREMENT BY 1;
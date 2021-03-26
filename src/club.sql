DROP TABLE CLUB
CASCADE CONSTRAINTS;

DROP SEQUENCE SEQ_CLUB;

CREATE TABLE CLUB (
    CLUBSEQ NUMBER CONSTRAINT PK_CLUB_01 PRIMARY KEY,
    CLUBTITLE VARCHAR2(200),
    CLUBTEXT VARCHAR2(4000),
    CLUBDATE DATE,
    MEMBERNUM NUMBER,
    CONSTRAINT FK_CLUB_01 FOREIGN KEY(MEMBERNUM) 
    REFERENCES MEMBERS(MEMBERNUM),
    CLUBIMAGE VARCHAR2(50)
);

CREATE SEQUENCE SEQ_CLUB
START WITH 1000
INCREMENT BY 1;
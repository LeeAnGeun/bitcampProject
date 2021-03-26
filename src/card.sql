DROP TABLE CARD
CASCADE CONSTRAINTS;

DROP SEQUENCE SEQ_CARD;

CREATE TABLE CARD (
    CARDSEQ NUMBER CONSTRAINT PK_CARD_01 PRIMARY KEY,
    CARDTITLE VARCHAR2(200),
    CARDTEXT VARCHAR2(4000),
    CARDSTART DATE,
    CARDEND DATE,
    BOOKNUM NUMBER,
    CONSTRAINT FK_CARD_01 FOREIGN KEY(BOOKNUM) 
    REFERENCES BOOK(BOOKNUM),
    CLUBSEQ NUMBER,
    CONSTRAINT FK_CARD_02 FOREIGN KEY(CLUBSEQ) 
    REFERENCES CLUB(CLUBSEQ)
);

CREATE SEQUENCE SEQ_CARD
START WITH 5000
INCREMENT BY 1;
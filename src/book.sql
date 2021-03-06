DROP TABLE BOOK
CASCADE CONSTRAINTS;

DROP SEQUENCE SEQ_BOOK;

CREATE TABLE BOOK (
    BOOKNUM NUMBER CONSTRAINT PK_BOOK_01 PRIMARY KEY,
    BOOKTITLE VARCHAR2(100),
    CATEGORIES NUMBER,
    BOOKREADCOUNT NUMBER,
    BOOKDEL NUMBER,
    GRADE NUMBER,
    AUTHOR VARCHAR2(50),
    ISSUEDATE DATE,
    BOOKHEADER VARCHAR2(4000),
    PUBLISHER VARCHAR2(50)
);

CREATE SEQUENCE SEQ_BOOK
START WITH 10000
INCREMENT BY 1;

INSERT INTO BOOK(BOOKNUM, BOOKTITLE, CATEGORIES, BOOKREADCOUNT, BOOKDEL, GRADE, AUTHOR, ISSUEDATE, BOOKHEADER, PUBLISHER)
VALUES(SEQ_BOOK.NEXTVAL, '인간실격', 100, 0, 0, 3.7, '홍길이', '2010/05/03', '난리남', '홍길주식회사');

INSERT INTO BOOK(BOOKNUM, BOOKTITLE, CATEGORIES, BOOKREADCOUNT, BOOKDEL, GRADE, AUTHOR, ISSUEDATE, BOOKHEADER, PUBLISHER)
VALUES(SEQ_BOOK.NEXTVAL, '인간실격1', 200, 0, 0, 4.2, '춘길이', '2009/09/21', '난리남', '춘길주식회사');

INSERT INTO BOOK(BOOKNUM, BOOKTITLE, CATEGORIES, BOOKREADCOUNT, BOOKDEL, GRADE, AUTHOR, ISSUEDATE, BOOKHEADER, PUBLISHER)
VALUES(SEQ_BOOK.NEXTVAL, '인간실격2', 300, 0, 0, 2.5, '성길이', '2007/06/11', '난리남', '성길주식회사');

INSERT INTO BOOK(BOOKNUM, BOOKTITLE, CATEGORIES, BOOKREADCOUNT, BOOKDEL, GRADE, AUTHOR, ISSUEDATE, BOOKHEADER, PUBLISHER)
VALUES(SEQ_BOOK.NEXTVAL, '인간실격3', 400, 0, 0, 4.5, '문길이', '2012/10/31', '난리남', '문길주식회사');

INSERT INTO BOOK(BOOKNUM, BOOKTITLE, CATEGORIES, BOOKREADCOUNT, BOOKDEL, GRADE, AUTHOR, ISSUEDATE, BOOKHEADER, PUBLISHER)
VALUES(SEQ_BOOK.NEXTVAL, '인간실격4', 500, 0, 0, 5, '김길이', '2019/08/01', '난리남', '김길주식회사');

INSERT INTO BOOK(BOOKNUM, BOOKTITLE, CATEGORIES, BOOKREADCOUNT, BOOKDEL, GRADE, AUTHOR, ISSUEDATE, BOOKHEADER, PUBLISHER)
VALUES(SEQ_BOOK.NEXTVAL, '인간실격5', 600, 0, 0, 1.1, '이길이', '2014/07/18', '난리남', '이길주식회사');

INSERT INTO BOOK(BOOKNUM, BOOKTITLE, CATEGORIES, BOOKREADCOUNT, BOOKDEL, GRADE, AUTHOR, ISSUEDATE, BOOKHEADER, PUBLISHER)
VALUES(SEQ_BOOK.NEXTVAL, '인간실격1', 200, 0, 0, 3.5, '춘길이', '2009/09/21', '난리남', '춘길주식회사');

INSERT INTO BOOK(BOOKNUM, BOOKTITLE, CATEGORIES, BOOKREADCOUNT, BOOKDEL, GRADE, AUTHOR, ISSUEDATE, BOOKHEADER, PUBLISHER)
VALUES(SEQ_BOOK.NEXTVAL, '인간실격2', 300, 0, 0, 4.5, '성길이', '2007/06/11', '난리남', '성길주식회사');

INSERT INTO BOOK(BOOKNUM, BOOKTITLE, CATEGORIES, BOOKREADCOUNT, BOOKDEL, GRADE, AUTHOR, ISSUEDATE, BOOKHEADER, PUBLISHER)
VALUES(SEQ_BOOK.NEXTVAL, '인간실격3', 400, 0, 0, 2.5, '문길이', '2012/10/31', '난리남', '문길주식회사');

INSERT INTO BOOK(BOOKNUM, BOOKTITLE, CATEGORIES, BOOKREADCOUNT, BOOKDEL, GRADE, AUTHOR, ISSUEDATE, BOOKHEADER, PUBLISHER)
VALUES(SEQ_BOOK.NEXTVAL, '인간실격4', 500, 0, 0, 1.1, '김길이', '2019/08/01', '난리남', '김길주식회사');

INSERT INTO BOOK(BOOKNUM, BOOKTITLE, CATEGORIES, BOOKREADCOUNT, BOOKDEL, GRADE, AUTHOR, ISSUEDATE, BOOKHEADER, PUBLISHER)
VALUES(SEQ_BOOK.NEXTVAL, '인간실격5', 600, 0, 0, 2.5, '이길이', '2014/07/18', '난리남', '이길주식회사');

SELECT * FROM BOOK;



-- 분야별 평점 1등 모음 쿼리
SELECT BOOKNUM, BOOKTITLE, CATEGORIES, BOOKREADCOUNT, BOOKDEL, GRADE, AUTHOR, ISSUEDATE, BOOKHEADER, PUBLISHER
FROM (
SELECT ROW_NUMBER() OVER (PARTITION BY CATEGORIES ORDER BY GRADE DESC) AS RNUM, BOOKNUM, BOOKTITLE, CATEGORIES, BOOKREADCOUNT, BOOKDEL, GRADE, AUTHOR, ISSUEDATE, BOOKHEADER, PUBLISHER
FROM BOOK 
WHERE RNUM = 1
)




		 




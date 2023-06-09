DROP TABLE WORDLIST CASCADE CONSTRAINTS;
DROP TABLE INPUT_WORD CASCADE CONSTRAINTS;
DROP TABLE TEMP CASCADE CONSTRAINTS;
CREATE TABLE WORDLIST(
        snum int, 
		FIR char(1),
		SEC char(1),	
		THI char(1),	
		FORT char(1),
	    FIF char(1),
	     PRIMARY KEY(snum));

CREATE TABLE INPUT_WORD(
        num int, 
		FIR char(1),
		SEC char(1),	
		THI char(1),	
		FORT char(1),
	    FIF char(1),	
        PRIMARY KEY(num));
		

CREATE TABLE TEMP(
     num3 int, 
	 NUM1 int,
	  NUM2 int,
	 PRIMARY KEY(num3));

INSERT INTO WORDLIST  VALUES(1,'A','P','P','L','E');	
INSERT INTO WORDLIST VALUES(2,'Q','U','E','E','N');	
INSERT INTO WORDLIST VALUES(3,'A','G','E','N','T');	
INSERT INTO WORDLIST VALUES(4,'A','D','U','L','T');	
INSERT INTO WORDLIST VALUES(5,'A','W','A','R','D');	
INSERT INTO WORDLIST VALUES(6,'A','L','B','U','M');	
INSERT INTO WORDLIST VALUES(7,'B','E','A','C','H');	
INSERT INTO WORDLIST VALUES(8,'B','L','A','C','K');	
INSERT INTO WORDLIST VALUES(9,'B','U','Y','E','R');	
INSERT INTO WORDLIST VALUES(10,'B','L','O','O','D');	
INSERT INTO WORDLIST VALUES(11,'M','O','N','E','Y');
INSERT INTO WORDLIST VALUES(12,'A','D','O','P','T');
INSERT INTO WORDLIST VALUES(13,'A','L','E','R','T');
INSERT INTO WORDLIST VALUES(14,'B','O','O','T','H');
INSERT INTO WORDLIST VALUES(15,'B','R','E','A','D');
INSERT INTO WORDLIST VALUES(16,'C','A','B','L','E');
INSERT INTO WORDLIST VALUES(17,'C','H','E','S','T');
INSERT INTO WORDLIST VALUES(18,'C','L','O','C','K');
INSERT INTO WORDLIST VALUES(19,'D','R','E','A','M');
INSERT INTO WORDLIST VALUES(20,'D','R','A','M','A');


INSERT INTO TEMP VALUES(1,0,0);	
SELECT * FROM TEMP;
COMMIT;
CLEAR scree
SET VERIFY OFF;
SET SERVEROUTPUT ON;
DROP TABLE INPUT_WORD CASCADE CONSTRAINTS;


CREATE or REPLACE FUNCTION right_possition(a in char, b in char)
RETURN int
is
c int;

begin
c:=0;
IF (a=b ) then
  C:=1;
  end if;
 
 RETURN c;
end right_possition;
/


CREATE or REPLACE PROCEDURE wrong_or(a in int ,x in char, a1 in char,a2 in char,a3 in char,a4 in char)
is

begin

 if  (a=1 ) THEN
 DBMS_OUTPUT.PUT_LINE(CHR(10)|| x ||' is in RIGHT alphabet');
  ELSIF(a1=x OR a2=x OR a3=x OR a4=x ) then
  DBMS_OUTPUT.PUT_LINE(CHR(10)|| x ||' is in the word but in wrong position');
  ELSE
  DBMS_OUTPUT.PUT_LINE(CHR(10)|| x ||' is not present in the word');
  
  end if;
 
end wrong_or;
/








CREATE TABLE INPUT_WORD(
        num int, 
		FIR char(1),
		SEC char(1),	
		THI char(1),	
		FORT char(1),
	    FIF char(1),	
        PRIMARY KEY(num));
		
	

	
--SELECT * FROM WORDLIST@SITE1;
--SELECT * FROM TEMP@SITE1; 

ACCEPT X  CHAR PROMPT "ENTER FIRST ALPHABET="
ACCEPT Y  CHAR PROMPT "ENTER SECOND ALPHABET="
ACCEPT Z  CHAR PROMPT "ENTER THIRD ALPHABET="
ACCEPT V  CHAR PROMPT "ENTER FORTH ALPHABET="
ACCEPT W  CHAR PROMPT "ENTER FIFTH ALPHABET="


DECLARE
C CHAR(1);
D CHAR(1);
E CHAR(1);
F CHAR(1);
G CHAR(1);
n int;
b int;
z int;

P int;
Q int;
T int;

A1 CHAR(1);
A2 CHAR(1);
A3 CHAR(1);
A4 CHAR(1); 
A5 CHAR(1);

R1 CHAR(1);
R2 CHAR(1);
R3 CHAR(1);
R4 CHAR(1);
R5 CHAR(1);

C1 int;
C12 int;

D1 int;
D12 int;
E1 int;
E12 int;
F1 int;
F12 int;
G1 int;
G12 int;




BEGIN
 C:= '&X';
 D:= '&Y';
 E:= '&Z';
 F:= '&V';
 G:= '&W';
 
 C1:=0;
 C12:=0;
 
 D1:=0;
 D12:=0;
 E1:=0;
 E12:=0;
 F1:=0;
 F12:=0;
 G1:=0;
 G12:=0;
 
 P:=0;
 Q:=6;
  
 
 


 
 INSERT INTO INPUT_WORD VALUES (1,C,D,E,F,G);
 
 select num1,num2 into b,n from TEMP@SITE1 where num3=1;
 select snum into z from wordlist@SITE1 where(fir=c and sec=d and thi=e and fort=f and fif= g);
 if (z>0) then
 
 if (b=0)then
 n := dbms_random.value(1,20);
 
 update TEMP@SITE1 set num2=N where num3=1;
 DBMS_OUTPUT.PUT_LINE(N);
 end if;
 
 SELECT FIR ,SEC ,THI,FORT,FIF INTO A1,A2,A3,A4,A5 FROM WORDLIST WHERE SNUM=N;	
 
 BEGIN
	b:=b+1;	
	update TEMP@SITE1 set num1=b where num3=1;
	p:=Q-B;
	IF (P=0) THEN
	DBMS_OUTPUT.PUT_LINE(CHR(10)|| ' You have LOST ALL CHANCE TO TRY. TRY AGAIN');
	ELSE
   
	DBMS_OUTPUT.PUT_LINE(CHR(10)|| ' You have only '|| p|| ' chance to try');
	END IF;
	
 IF (a1=C and a2=D and a3=E and a4=F and a5=G) then

      DBMS_OUTPUT.PUT_LINE( CHR(10)||'Congratulation. You guess the right word');
	  b:=0;
	  update TEMP@SITE1 set num1=b, num2=0 where num3=1;

 ELSE
 c1:= right_possition (a1,C );
 D1:= right_possition (a2,D );
 E1:= right_possition (a3,E );
 F1:= right_possition (a4,F );
 G1:= right_possition (a5,G );
 
  IF (C1=1 ) then
  
  A1:='@';
  
  end if;
  IF (D1=1 ) then
  
  A2:='@';
  
  end if;
  IF ( E1=1 ) then
 
  A3:='@';
  
  end if;
  IF (F1=1 ) then
  
  A4:='@';
 
  end if;
  IF (G1=1 ) then
  
  A5:='@';
 
   end if;
 
  wrong_or(c1,c,a2,a3,a4,a5 );
  wrong_or(D1,D,a1,a3,a4,a5 );
  wrong_or(E1,E,a2,a1,a4,a5 );
  wrong_or(F1,F,a2,a3,a1,a5 );
  wrong_or(G1,G,a2,a3,a4,a1 );   
   
  
  
 end if;
  if (b=6) then
  b:=0;
  update TEMP@SITE1 set num1=b ,num2=0 where num3=1;
 -- DBMS_OUTPUT.PUT_LINE(CHR(10)|| 'B==6');
  
  end if;
 END; 
 DBMS_OUTPUT.PUT_LINE(CHR(10)|| 'YOU HAVE ENTERED THIS WORD');
 end if;
 EXCEPTION
   when OTHERS then
   dbms_output.put_line('This word is not in the list');
 
 
END;
/
COMMIT;
 
SELECT * FROM INPUT_WORD;
  --SELECT *  FROM TEMP@SITE1;



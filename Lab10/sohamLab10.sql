--ASSIGNMENT 10 (PLSQL)
--Q1
declare
n number(2);

begin
n := &n;
if mod(n,2) = 0
then
dbms_output.put_line('Number is even');
else
dbms_output.put_line('Number is odd');
end if;
end;
/

--Q2
declare
a number:=&a;
b number:=&b;
c number:=&c;
begin
dbms_output.put_line('a='||a||' b='||b||' c='||c);
if a>b AND a>c
then
dbms_output.put_line('a is greatest');
else
if b>a AND b>c
then
dbms_output.put_line('b is greatest');
else
dbms_output.put_line('c is greatest');
end if;
end if;
end;
/

--Q3
DECLARE
month NUMBER(12);
year NUMBER(10);

BEGIN
dbms_output.Put_line('Enter month');
  month := &month;
dbms_output.Put_line('Enter year');
  year := &year;

IF month = 1 or month = 3 or month = 5 or month = 7 or month = 8 or month = 10 or month = 12  THEN
dbms_output.Put_line('No of days in the month=31');

  ELSE IF month = 2 THEN
      IF MOD(year, 4)=0
      AND
      MOD(year, 100)!=0
      OR
      MOD(year, 400)=0 THEN
      dbms_output.Put_line( ' is a leap year hence 29 days');
    ELSE
      dbms_output.Put_line(' is not a leap year hence 28 days.');
    END IF;

  ELSE
  dbms_output.Put_line('No of days in the month=30') ;
END IF;

END if ;
end;
/


--Q4
declare
Month number(2);
begin
Month:=&Month;
CASE Month
  WHEN 1  THEN DBMS_OUTPUT.PUT_LINE('Jan');
  WHEN 2  THEN DBMS_OUTPUT.PUT_LINE('Feb');
  WHEN 3  THEN DBMS_OUTPUT.PUT_LINE('Mar');
  WHEN 4  THEN DBMS_OUTPUT.PUT_LINE('Apr');
  WHEN 5  THEN DBMS_OUTPUT.PUT_LINE('May');
  WHEN 6  THEN DBMS_OUTPUT.PUT_LINE('Jun');
  WHEN 7  THEN DBMS_OUTPUT.PUT_LINE('July');
  WHEN 8  THEN DBMS_OUTPUT.PUT_LINE('Aug');
  WHEN 9  THEN DBMS_OUTPUT.PUT_LINE('Sep');
  WHEN 10  THEN DBMS_OUTPUT.PUT_LINE('Oct');
  WHEN 11 THEN DBMS_OUTPUT.PUT_LINE('Nov');
  WHEN 12 THEN DBMS_OUTPUT.PUT_LINE('Dec');
  ELSE dbms_output.put_line('Wrong Input !!!');
 END CASE ;
end;
/


--Q5
DECLARE
Score Number(3);
Grade Char(1);
BEGIN
Score := &Score;
IF Score >= 90 THEN
Grade := 'A';
ELSIF Score >= 80 THEN
Grade := 'B';
ELSIF Score >= 70 THEN
Grade := 'C';
ELSIF Score >= 60 THEN
Grade := 'D';
ELSE
Grade := 'E';
END IF;
DBMS_OUTPUT.PUT_LINE('Your Letter Grade is: ' || Grade);
END;
/

--Q6
declare
n number(5);
rev number(5);

begin
n:=&n;
rev:=0;
while n>0 loop

rev:=(rev*10) + mod(n,10);
n:=floor(n/10);
end loop;
dbms_output.put_line('Reverse = ' || rev);
end;
/

--Q7
declare
n number(2);
i number(1);
j number(1);
begin
n:=&n;
for i in 1..n
loop
for j in 1..i
loop
dbms_output.put('*');
end loop;
dbms_output.new_line;
end loop;
end;
/

--Q8
Create table Areas_1107 (r number(2), area number(14,2));
declare
pi constant number(4,2):=3.14;
 radius number(5);
 area number(14,2);
begin
radius :=3;
while radius <=7
loop
area := pi*power(radius,2);
insert into Areas_1107
values(radius,area);
radius := radius+1;
end loop;
end;
/

--Q9
 CREATE TABLE ITEM_1107(ItemNum number(3));
BEGIN

INSERT INTO ITEM_1107 VALUES (1);
INSERT INTO ITEM_1107 VALUES (2);
INSERT INTO ITEM_1107 VALUES (3);
INSERT INTO ITEM_1107 VALUES (4);
INSERT INTO ITEM_1107 VALUES (5);

END;
/

--Q10
BEGIN 
DELETE
FROM ITEM_1107
WHERE ItemNum=4;
end;
/

--Q11


--Q12
DECLARE
d NUMBER(2) := &rent_date;
m NUMBER(2) := &rent_month;
      y NUMBER(4) := &rent_year;
      retd NUMBER(2);
      retm NUMBER(2);
      rety NUMBER(4);
      days NUMBER(2);
    BEGIN
     retd := d + 3;
     retm := m;
     rety := y;
     IF m=2 AND ((MOD(y,4)=0 AND MOD(y,100)!=0) OR MOD(y, 400)=0)THEN
        days := 29;
     ELSIf m=2 THEN
        days := 28;    
     ELSIF m=1 OR m=3 OR m=5 OR m=7 OR m=8 OR m=10 OR m=12 THEN
        days := 31;
     ELSIF m=4 OR m=6 OR m=9 OR m=11 THEN
        days := 30;
     END IF;
     IF retd > days THEN
        retd := retd - days;
        retm := retm + 1;
        IF retm > 12 THEN
           retm := 1;
           rety := rety + 1;
        END IF;
     END IF;
     DBMS_OUTPUT.PUT_LINE('RENT DATE:   '||d||'/'||m||'/'||y);
    DBMS_OUTPUT.PUT_LINE('RETURN DATE: '||retd||'/'||retm||'/'|| rety);
   END;
   /



--Q13
declare
cap location_1107.CAPACITY%type;
ri location_1107.ROOMID%type;
addc number(4):=50;

begin
dbms_output.put_line('Enter room ID: ');
ri:=&ri;
select CAPACITY into cap from location_1107 where ROOMID=ri;
if cap<50 then
update location_1107 set CAPACITY=addc where ROOMID=ri;
end if;
end;
/

--Q11
declare
si student_1107.studentID%type;
firstn student_1107.first%type;
p student_1107.phone%type;
c student_1107.city%type;

BEGIN
si := &si;
SELECT 
FIRST, PHONE, CITY

INTO
firstn , p ,c

FROM student_1107

WHERE STUDENTID = si;

dbms_output.put_line(firstn||' '||p||' '||c);
END;
/


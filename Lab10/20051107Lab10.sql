SQL> SET SERVEROUTPUT ON;
SQL>
SQL> --Q1
SQL> declare
  2  n number(2);
  3  
  4  begin
  5  n := &n;
  6  if mod(n,2) = 0
  7  then
  8  dbms_output.put_line('Number is even');
  9  else
 10  dbms_output.put_line('Number is odd');
 11  end if;
 12  end;
 13  /
Enter value for n: 27
old   5: n := &n;
new   5: n := 27;
Number is odd                                                                   

PL/SQL procedure successfully completed.

SQL> --Q2
SQL> declare
  2  a number:=&a;
  3  b number:=&b;
  4  c number:=&c;
  5  begin
  6  dbms_output.put_line('a='||a||' b='||b||' c='||c);
  7  if a>b AND a>c
  8  then
  9  dbms_output.put_line('a is greatest');
 10  else
 11  if b>a AND b>c
 12  then
 13  dbms_output.put_line('b is greatest');
 14  else
 15  dbms_output.put_line('c is greatest');
 16  end if;
 17  end if;
 18  end;
 19  /
Enter value for a: 3
old   2: a number:=&a;
new   2: a number:=3;
Enter value for b: 9
old   3: b number:=&b;
new   3: b number:=9;
Enter value for c: 2
old   4: c number:=&c;
new   4: c number:=2;
a=3 b=9 c=2                                                                     
b is greatest                                                                   

PL/SQL procedure successfully completed.

SQL> --Q3
SQL> DECLARE
  2  month NUMBER(12);
  3  year NUMBER(10);
  4  
  5  BEGIN
  6  dbms_output.Put_line('Enter month');
  7    month := &month;
  8  dbms_output.Put_line('Enter year');
  9    year := &year;
 10  
 11  IF month = 1 or month = 3 or month = 5 or month = 7 or month = 8 or month = 10 or month = 12  THEN
 12  dbms_output.Put_line('No of days in the month=31');
 13  
 14    ELSE IF month = 2 THEN
 15        IF MOD(year, 4)=0
 16        AND
 17        MOD(year, 100)!=0
 18        OR
 19        MOD(year, 400)=0 THEN
 20        dbms_output.Put_line( ' is a leap year hence 29 days');
 21      ELSE
 22        dbms_output.Put_line(' is not a leap year hence 28 days.');
 23      END IF;
 24  
 25    ELSE
 26    dbms_output.Put_line('No of days in the month=30') ;
 27  END IF;
 28  
 29  END if ;
 30  end;
 31  /
Enter value for month: 2
old   7:   month := &month;
new   7:   month := 2;
Enter value for year: 2017
old   9:   year := &year;
new   9:   year := 2017;
Enter month                                                                     
Enter year                                                                      
is not a leap year hence 28 days.                                               

PL/SQL procedure successfully completed.

SQL> --Q4
SQL> declare
  2  Month number(2);
  3  begin
  4  Month:=&Month;
  5  CASE Month
  6    WHEN 1  THEN DBMS_OUTPUT.PUT_LINE('January');
  7    WHEN 2  THEN DBMS_OUTPUT.PUT_LINE('February');
  8    WHEN 3  THEN DBMS_OUTPUT.PUT_LINE('March');
  9    WHEN 4  THEN DBMS_OUTPUT.PUT_LINE('April');
 10    WHEN 5  THEN DBMS_OUTPUT.PUT_LINE('May');
 11    WHEN 6  THEN DBMS_OUTPUT.PUT_LINE('Jun');
 12    WHEN 7  THEN DBMS_OUTPUT.PUT_LINE('July');
 13    WHEN 8  THEN DBMS_OUTPUT.PUT_LINE('August');
 14    WHEN 9  THEN DBMS_OUTPUT.PUT_LINE('September');
 15    WHEN 10  THEN DBMS_OUTPUT.PUT_LINE('October');
 16    WHEN 11 THEN DBMS_OUTPUT.PUT_LINE('November');
 17    WHEN 12 THEN DBMS_OUTPUT.PUT_LINE('December');
 18    ELSE dbms_output.put_line('Wrong Input !!!');
 19   END CASE ;
 20  end;
 21  /
Enter value for month: 7
old   4: Month:=&Month;
new   4: Month:=7;
July                                                                            

PL/SQL procedure successfully completed.

SQL> --Q5
SQL> DECLARE
  2  Score Number(3);
  3  Grade Char(1);
  4  BEGIN
  5  Score := &Score;
  6  IF Score >= 90 THEN
  7  Grade := 'A';
  8  ELSIF Score >= 80 THEN
  9  Grade := 'B';
 10  ELSIF Score >= 70 THEN
 11  Grade := 'C';
 12  ELSIF Score >= 60 THEN
 13  Grade := 'D';
 14  ELSE
 15  Grade := 'E';
 16  END IF;
 17  DBMS_OUTPUT.PUT_LINE('Your Grade is: ' || Grade);
 18  END;
 19  /
Enter value for score: 47
old   5: Score := &Score;
new   5: Score := 47;
Your Grade is: E                                                         

PL/SQL procedure successfully completed.

SQL> --Q6
SQL> declare
  2  n number(5);
  3  rev number(5);
  4  
  5  begin
  6  n:=&n;
  7  rev:=0;
  8  while n>0 loop
  9  
 10  rev:=(rev*10) + mod(n,10);
 11  n:=floor(n/10);
 12  end loop;
 13  dbms_output.put_line('Reverse = ' || rev);
 14  end;
 15  /
Enter value for n: 107
old   6: n:=&n;
new   6: n:=107;
Reverse = 701                                                                   

PL/SQL procedure successfully completed.

SQL> --Q7
SQL> declare
  2  n number(2);
  3  i number(1);
  4  j number(1);
  5  begin
  6  n:=&n;
  7  for i in 1..n
  8  loop
  9  for j in 1..i
 10  loop
 11  dbms_output.put('*');
 12  end loop;
 13  dbms_output.new_line;
 14  end loop;
 15  end;
 16  /
Enter value for n: 7
old   6: n:=&n;
new   6: n:=7;
*                                                                               
**                                                                              
***                                                                             
****                                                                            
*****                                                                           
******                                                                          
*******                                                                         

PL/SQL procedure successfully completed.

SQL> --Q8
SQL> Create table Areas_1107 (r number(2), area number(14,2));

Table created.

SQL> declare
  2  pi constant number(4,2):=3.14;
  3   radius number(5);
  4   area number(14,2);
  5  begin
  6  radius :=3;
  7  while radius <=7
  8  loop
  9  area := pi*power(radius,2);
 10  insert into Areas_1107
 11  values(radius,area);
 12  radius := radius+1;
 13  end loop;
 14  end;
 15  /

PL/SQL procedure successfully completed.

SQL> select * from Areas_1107;

         R       AREA                                                           
---------- ----------                                                           
         3      28.26                                                           
         4      50.24                                                           
         5       78.5                                                           
         6     113.04                                                           
         7     153.86                                                           

SQL> --Q9
SQL>  CREATE TABLE ITEM_1107(ItemNum number(3));

Table created.

SQL> BEGIN
  2  
  3  INSERT INTO ITEM_1107 VALUES (1);
  4  INSERT INTO ITEM_1107 VALUES (2);
  5  INSERT INTO ITEM_1107 VALUES (3);
  6  INSERT INTO ITEM_1107 VALUES (4);
  7  INSERT INTO ITEM_1107 VALUES (5);
  8  
  9  END;
 10  /

PL/SQL procedure successfully completed.

SQL> select * from ITEM_1107;

   ITEMNUM                                                                      
----------                                                                      
         1                                                                      
         2                                                                      
         3                                                                      
         4                                                                      
         5                                                                      

SQL> --Q10
SQL> BEGIN
  2  DELETE
  3  FROM ITEM_1107
  4  WHERE ItemNum=4;
  5  end;
  6  /

PL/SQL procedure successfully completed.

SQL> select * from ITEM_1107;

   ITEMNUM                                                                      
----------                                                                      
         1                                                                      
         2                                                                      
         3                                                                      
         5                                                                      

SQL> --Q11
SQL> declare
  2  si student_1107.studentID%type;
  3  firstn student_1107.first%type;
  4  p student_1107.phone%type;
  5  c student_1107.city%type;
  6  
  7  BEGIN
  8  si := &si;
  9  SELECT
 10  FIRST, PHONE, CITY
 11  
 12  INTO
 13  firstn , p ,c
 14  
 15  FROM student_1107
 16  
 17  WHERE STUDENTID = si;
 18  
 19  dbms_output.put_line(firstn||' '||p||' '||c);
 20  END;
 21  /
Enter value for si: 102
old   8: si := &si;
new   8: si := 102;
Rajesh 7325553333 Edison                                                        

PL/SQL procedure successfully completed.

SQL> --Q12
SQL> DECLARE
  2  d NUMBER(2) := &rent_date;
  3  m NUMBER(2) := &rent_month;
  4        y NUMBER(4) := &rent_year;
  5        retd NUMBER(2);
  6        retm NUMBER(2);
  7        rety NUMBER(4);
  8        days NUMBER(2);
  9      BEGIN
 10       retd := d + 3;
 11       retm := m;
 12       rety := y;
 13       IF m=2 AND ((MOD(y,4)=0 AND MOD(y,100)!=0) OR MOD(y, 400)=0)THEN
 14          days := 29;
 15       ELSIf m=2 THEN
 16          days := 28;
 17       ELSIF m=1 OR m=3 OR m=5 OR m=7 OR m=8 OR m=10 OR m=12 THEN
 18          days := 31;
 19       ELSIF m=4 OR m=6 OR m=9 OR m=11 THEN
 20          days := 30;
 21       END IF;
 22       IF retd > days THEN
 23          retd := retd - days;
 24          retm := retm + 1;
 25          IF retm > 12 THEN
 26             retm := 1;
 27             rety := rety + 1;
 28          END IF;
 29       END IF;
 30       DBMS_OUTPUT.PUT_LINE('RENT DATE:   '||d||'/'||m||'/'||y);
 31      DBMS_OUTPUT.PUT_LINE('RETURN DATE: '||retd||'/'||retm||'/'|| rety);
 32     END;
 33     /
Enter value for rent_date: 2
old   2: d NUMBER(2) := &rent_date;
new   2: d NUMBER(2) := 2;
Enter value for rent_month: 12
old   3: m NUMBER(2) := &rent_month;
new   3: m NUMBER(2) := 12;
Enter value for rent_year: 2003
old   4:       y NUMBER(4) := &rent_year;
new   4:       y NUMBER(4) := 2003;
RENT DATE:   2/12/2003                                                          
RETURN DATE: 5/12/2003                                                          

PL/SQL procedure successfully completed.

SQL> --Q13
SQL> select * from location_1107;

    ROOMID BUILDIN ROO   CAPACITY R                                             
---------- ------- --- ---------- -                                             
        11 Gandhi  101          2 O                                             
        12 Gandhi  103          2 O                                             
        13 Kennedy 202         35 L                                             
        14 Kennedy 204         50 L                                             
        15 Nehru   301         50 C                                             
        16 Nehru   309         45 C                                             
        17 Gandhi  105          2 O                                             
        18 Kennedy 206         40 L                                             
        19 Kennedy 210         30 L                                             
        20 Gandhi  107          2 O                                             
        21 Gandhi  109          2 O                                             

11 rows selected.
SQL> declare
  2  cap location_1107.CAPACITY%type;
  3  ri location_1107.ROOMID%type;
  4  addc number(4):=50;
  5  
  6  begin
  7  dbms_output.put_line('Enter room ID: ');
  8  ri:=&ri;
  9  select CAPACITY into cap from location_1107 where ROOMID=ri;
 10  if cap<50 then
 11  update location_1107 set CAPACITY=addc where ROOMID=ri;
 12  end if;
 13  end;
 14  /
Enter value for ri: 12
old   8: ri:=&ri;
new   8: ri:=12;
Enter room ID:                                                                  

PL/SQL procedure successfully completed.

SQL> select * from location_1107;

    ROOMID BUILDIN ROO   CAPACITY R                                             
---------- ------- --- ---------- -                                             
        11 Gandhi  101          2 O                                             
        12 Gandhi  103         50 O                                             
        13 Kennedy 202         35 L                                             
        14 Kennedy 204         50 L                                             
        15 Nehru   301         50 C                                             
        16 Nehru   309         45 C                                             
        17 Gandhi  105          2 O                                             
        18 Kennedy 206         40 L                                             
        19 Kennedy 210         30 L                                             
        20 Gandhi  107          2 O                                             
        21 Gandhi  109          2 O                                             

11 rows selected.

SQL> spool out;

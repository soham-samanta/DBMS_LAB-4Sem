SQL> SELECT Last || ', ' || First, StudentID FROM STUDENT;
SELECT Last || ', ' || First, StudentID FROM STUDENT
                              *
ERROR at line 1:
ORA-00904: "STUDENTID": invalid identifier 


SQL> SELECT Last || ', ' || First, ID FROM STUDENT;
SELECT Last || ', ' || First, ID FROM STUDENT
                              *
ERROR at line 1:
ORA-00904: "ID": invalid identifier 


SQL> desc student;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ROLL                                               NUMBER(4)
 NAME                                               VARCHAR2(20)
 CITY                                               VARCHAR2(15)
 AGE                                                NUMBER(3)
 CGPA                                               NUMBER(5,2)

SQL> desc student2_1107;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ROLL                                      NOT NULL NUMBER(6)
 NAME                                               VARCHAR2(10)
 AGE                                                NUMBER(2)
 CGPA                                               NUMBER(5,2)
 CITY                                               VARCHAR2(10)

SQL> desc w4student;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 STUDENTID                                 NOT NULL CHAR(5)
 LAST                                      NOT NULL VARCHAR2(15)
 FIRST                                     NOT NULL VARCHAR2(15)
 STREET                                             VARCHAR2(25)
 CITY                                               VARCHAR2(15)
 STATE                                              VARCHAR2(2)
 ZIP                                                VARCHAR2(5)
 STARTTERM                                          CHAR(4)
 BIRTHDAY                                           DATE
 FACULTYID                                          NUMBER(3)
 MAJORID                                            NUMBER(3)
 PHONE                                              CHAR(10)

SQL> SELECT Last || ', ' || First, STUDENTID FROM W4STUDENT;

no rows selected

SQL> SELECT * FROM TERM_8_1107 WHERE TermDesc='Winter 2003';

no rows selected

SQL> SELECT NAME FROM W4FACULTY WHERE DeptId IN(1,2);

no rows selected

SQL> SELECT * FROM W4STUDENT WHERE STATE IN('NY','NJ');

no rows selected

SQL> INSERT INTO TERM_8_1107 VALUES('XJ01','Spring 2024','01-FEB-2024','01-JUN-2024');

1 row created.

SQL> SELECT Name FROM W4FACULTY ORDER BY DEPTId DESC, Name ASC;

no rows selected

SQL> spool out;

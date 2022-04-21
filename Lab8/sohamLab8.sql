SQL> -- Q1
SQL> 
SQL> SELECT * FROM FACULTY_1107 WHERE FACULTYID = (SELECT FACULTYID FROM STUDENT_1107 WHERE FIRST = 'Jose' AND LAST = 'Diaz');

 FACULTYID NAME                ROOMID PHO     DEPTID                            
---------- --------------- ---------- --- ----------                            
       123 Mobley                  11 529          1                            

SQL> -- Q2
SQL> 
SQL> SELECT * FROM (SELECT CAPACITY FROM LOCATION_1107 WHERE ROOMTYPE != 'O'  ORDER BY CAPACITY ) WHERE ROWNUM<=2;

  CAPACITY                                                                      
----------                                                                      
        30                                                                      
        35                                                                      

SQL> -- Q3
SQL> 
SQL> SELECT MAXCOUNT FROM(SELECT MAXCOUNT, TERMID FROM CRSSECTION_1107 WHERE TERMID = 'SP03' ORDER BY MAXCOUNT DESC) WHERE ROWNUM <= 3;

  MAXCOUNT                                                                      
----------                                                                      
        40                                                                      
        40                                                                      
        35                                                                      

SQL> -- Q4
SQL> 
SQL> SELECT * FROM LOCATION_1107 WHERE ROOMTYPE = 'C';

    ROOMID BUILDIN ROO   CAPACITY R                                             
---------- ------- --- ---------- -                                             
        15 Nehru   301         50 C                                             
        16 Nehru   309         45 C                                             

SQL> -- Q5
SQL> 
SQL> SELECT FACULTYID, NAME FROM FACULTY_1107 WHERE FACULTYID IN (SELECT FACULTYID FROM CRSSECTION_1107 WHERE TERMID != 'SP03');

 FACULTYID NAME                                                                 
---------- ---------------                                                      
       111 Jones                                                                
       123 Mobley                                                               
       444 Rivera                                                               
       345 Sen                                                                  

SQL> -- Q6
SQL> 
SQL> SELECT NAME AS FACULTY_NAME, FIRST AS STUDENT_NAME FROM(SELECT *FROM STUDENT_1107 JOIN FACULTY_1107 ON STUDENT_1107.FACULTYID = FACULTY_1107.FACULTYID);

FACULTY_NAME    STUDENT_NAME                                                    
--------------- ---------------                                                 
Jones           Rajesh                                                          
Williams        Amir                                                            
Mobley          Jose                                                            
Sen             Brian                                                           
Chang           Deborah                                                         
Chang           Mickey                                                          

6 rows selected.

SQL> -- Q7
SQL> 
SQL> SELECT FIRST ||' '|| LAST AS STUDENT_NAME FROM STUDENT_1107 WHERE STUDENTID IN (SELECT STUDENTID FROM REGISTRATION_1107 WHERE REGSTATUS = 'R');

STUDENT_NAME                                                                    
-------------------------------                                                 
Jose Diaz                                                                       
Rajesh Patel                                                                    
Deborah Rickles                                                                 
Brian Lee                                                                       
Amir Khan                                                                       

SQL> -- Q8
SQL> 
SQL> SELECT NAME AS FACULTY_NAME FROM FACULTY_1107 WHERE ROOMID IN(SELECT ROOMID FROM LOCATION_1107 WHERE BUILDING = 'Gandhi' OR BUILDING = 'Nehru');

FACULTY_NAME                                                                    
---------------                                                                 
Jones                                                                           
Williams                                                                        
Mobley                                                                          
Vajpayee                                                                        
Sen                                                                             
Rivera                                                                          
Chang                                                                           
Collins                                                                         

8 rows selected.

SQL> spool out;

SQL> SELECT first, last, majordesc from student_1107, major_1107 WHERE student_1107.majorid = student_1107.majorid;

FIRST           LAST            MAJORDESC                                       
--------------- --------------- -------------------------                       
Jose            Diaz            AAS-Accounting                                  
Jose            Diaz            AAS-Computer Science                            
Jose            Diaz            AAS-Telecommunications                          
Jose            Diaz            BS-Accounting                                   
Jose            Diaz            BS-Computer Science                             
Jose            Diaz            BS-Telecommunications                           
Mickey          Tyler           AAS-Accounting                                  
Mickey          Tyler           AAS-Computer Science                            
Mickey          Tyler           AAS-Telecommunications                          
Mickey          Tyler           BS-Accounting                                   
Mickey          Tyler           BS-Computer Science                             

FIRST           LAST            MAJORDESC                                       
--------------- --------------- -------------------------                       
Mickey          Tyler           BS-Telecommunications                           
Rajesh          Patel           AAS-Accounting                                  
Rajesh          Patel           AAS-Computer Science                            
Rajesh          Patel           AAS-Telecommunications                          
Rajesh          Patel           BS-Accounting                                   
Rajesh          Patel           BS-Computer Science                             
Rajesh          Patel           BS-Telecommunications                           
Deborah         Rickles         AAS-Accounting                                  
Deborah         Rickles         AAS-Computer Science                            
Deborah         Rickles         AAS-Telecommunications                          
Deborah         Rickles         BS-Accounting                                   

FIRST           LAST            MAJORDESC                                       
--------------- --------------- -------------------------                       
Deborah         Rickles         BS-Computer Science                             
Deborah         Rickles         BS-Telecommunications                           
Brian           Lee             AAS-Accounting                                  
Brian           Lee             AAS-Computer Science                            
Brian           Lee             AAS-Telecommunications                          
Brian           Lee             BS-Accounting                                   
Brian           Lee             BS-Computer Science                             
Brian           Lee             BS-Telecommunications                           
Amir            Khan            AAS-Accounting                                  
Amir            Khan            AAS-Computer Science                            
Amir            Khan            AAS-Telecommunications                          

FIRST           LAST            MAJORDESC                                       
--------------- --------------- -------------------------                       
Amir            Khan            BS-Accounting                                   
Amir            Khan            BS-Computer Science                             
Amir            Khan            BS-Telecommunications                           

36 rows selected.

SQL> 
SQL> SELECT first, last from student_1107, registration_1107 WHERE student_1107.startterm = 'WN03' and registration_1107.final = 'F' and student_1107.studentid = registration_1107.studentid;

FIRST           LAST                                                            
--------------- ---------------                                                 
Jose            Diaz                                                            

SQL> 
SQL> SELECT first, last, name, building from student_1107, faculty_1107, location_1107 WHERE student_1107.facultyid = faculty_1107.facultyid and faculty_1107.roomid = location_1107.roomid;

FIRST           LAST            NAME            BUILDIN                         
--------------- --------------- --------------- -------                         
Jose            Diaz            Mobley          Gandhi                          
Rajesh          Patel           Jones           Gandhi                          
Brian           Lee             Sen             Gandhi                          
Mickey          Tyler           Chang           Gandhi                          
Deborah         Rickles         Chang           Gandhi                          
Amir            Khan            Williams        Gandhi                          

6 rows selected.

SQL> 
SQL> SELECT section, name from crssection_1107, faculty_1107 WHERE crssection_1107.termid = 'SP03' and crssection_1107.facultyid = faculty_1107.facultyid(+);

SE NAME                                                                         
-- ---------------                                                              
11 Jones                                                                        
2  Jones                                                                        
31 Mobley                                                                       
21 Mobley                                                                       
5                                                                               
1                                                                               

6 rows selected.

SQL> 
SQL> SELECT c1.title, c2.title "a" from course_1107 c1, course_1107 c2 WHERE c1.prereq = c2.courseid(+) ;

TITLE                a                                                          
-------------------- --------------------                                       
English Literature   Basic English                                              
Systems Analysis     Database Systems                                           
Accounting                                                                      
College Algebra                                                                 
Database Systems                                                                
Basic English                                                                   

6 rows selected.

SQL> 
SQL> SELECT facultyid, name, deptid from faculty_1107 order by deptid, roomid ;

 FACULTYID NAME                DEPTID                                           
---------- --------------- ----------                                           
       111 Jones                    1                                           
       123 Mobley                   1                                           
       235 Vajpayee                 2                                           
       222 Williams                 2                                           
       345 Sen                      3                                           
       333 Collins                  3                                           
       444 Rivera                   4                                           
       555 Chang                    5                                           

8 rows selected.

SQL> SELECT DEPTID, COUNT(*) FROM FACULTY_1107 GROUP BY deptid;

    DEPTID   COUNT(*)                                                           
---------- ----------                                                           
         1          2                                                           
         2          2                                                           
         4          1                                                           
         5          1                                                           
         3          2                                                           

SQL> spool out;

SQL> CREATE TABLE ROOM_6_1107 (
  2      RoomType CHAR NOT NULL PRIMARY KEY ,
  3      RoomDesc VARCHAR2(9) );

Table created.

SQL> CREATE TABLE LOCATION_7 (
  2      RoomID NUMBER(2) NOT NULL PRIMARY KEY,
  3       Building VARCHAR2(7) NOT NULL ,
  4       RoomNo CHAR(3) NOT NULL UNIQUE ,
  5       Capacity NUMBER(2) CHECK(Capacity>0),
  6       RoomType CHAR );

Table created.

SQL> CREATE TABLE TERM_8 (
  2      TermID CHAR(4) NOT NULL PRIMARY KEY ,
  3      TermDesc VARCHAR2(11) ,
  4       StartDate DATE ,
  5       EndDate DATE );

Table created.

SQL> CREATE TABLE DEPARTMENT_9 (
  2       DeptID NUMBER(1) NOT NULL PRIMARY KEY ,
  3       DeptName VARCHAR2(20),
  4       FacultyID NUMBER(3) );

Table created.

SQL> ALTER TABLE  LOCATION_7 RENAME TO LOCATION_7_1107;

Table altered.

SQL> ALTER TABLE TERM_8 RENAME TO TERM_8_1107;

Table altered.

SQL> ALTER TABLE DEPARTMENT_9 RENAME TO  DEPARTMENT_9_1107;

Table altered.

SQL> CREATE TABLE MAJOR_10_1107 (
  2      MajorID NUMBER(3) NOT NULL PRIMARY KEY ,
  3       MajorDesc VARCHAR2(25) );

Table created.

SQL> ALTER TABLE STUDENT_1_1107 ADD CONSTRAINT STUDENT_1_StartTerm_FK FOREIGN KEY (StartTerm) REFERENCES  TERM_8_1107( TermID);

Table altered.

SQL> ALTER TABLE STUDENT_1_1107 ADD CONSTRAINT STUDENT_1_Faculty_FK FOREIGN KEY (FacultyID) REFERENCES  FACULTY_2_1107( FacultyID );

Table altered.

SQL> ALTER TABLE STUDENT_1_1107 ADD CONSTRAINT STUDENT_1_Major_FK FOREIGN KEY (MajorID) REFERENCES  MAJOR_10_1107( MajorID );

Table altered.

SQL> ALTER TABLE FACULTY_2_1107 ADD CONSTRAINT FACULTY_2_RoomID_FK FOREIGN KEY (RoomID) REFERENCES  LOCATION_7_1107( RoomID );

Table altered.

SQL> ALTER TABLE FACULTY_2_1107 ADD CONSTRAINT FACULTY_2_DeptID_FK FOREIGN KEY (DeptID) REFERENCES  DEPARTMENT_9_1107( DeptID );

Table altered.

SQL> ALTER TABLE CRSSECTION_3_1107 ADD CONSTRAINT CRSSECTION_3_CourseID_FK FOREIGN KEY (CourseID) REFERENCES  COURSE_4_1107( CourseID );

Table altered.

SQL> ALTER TABLE CRSSECTION_3_1107 ADD CONSTRAINT CRSSECTION_3_TermID_FK FOREIGN KEY (TermID) REFERENCES  TERM_8_1107( TermID );

Table altered.

SQL> ALTER TABLE CRSSECTION_3_1107 ADD CONSTRAINT CRSSECTION_3_FacultyID_FK FOREIGN KEY (FacultyID) REFERENCES  Faculty_2_1107TERM_8_1107( FacultyID );
ALTER TABLE CRSSECTION_3_1107 ADD CONSTRAINT CRSSECTION_3_FacultyID_FK FOREIGN KEY (FacultyID) REFERENCES  Faculty_2_1107TERM_8_1107( FacultyID )
                                                                                                           *
ERROR at line 1:
ORA-00942: table or view does not exist 


SQL> ALTER TABLE CRSSECTION_3_1107 ADD CONSTRAINT CRSSECTION_3_FacultyID_FK FOREIGN KEY (FacultyID) REFERENCES  Faculty_2_1107TERM_8_1107( FacultyID );
ALTER TABLE CRSSECTION_3_1107 ADD CONSTRAINT CRSSECTION_3_FacultyID_FK FOREIGN KEY (FacultyID) REFERENCES  Faculty_2_1107TERM_8_1107( FacultyID )
                                                                                                           *
ERROR at line 1:
ORA-00942: table or view does not exist 


SQL> ALTER TABLE CRSSECTION_3_1107 ADD CONSTRAINT CRSSECTION_3_RoomID_FK FOREIGN KEY (RoomID) REFERENCES  Location_7_1107TERM_8_1107( RoomID );
ALTER TABLE CRSSECTION_3_1107 ADD CONSTRAINT CRSSECTION_3_RoomID_FK FOREIGN KEY (RoomID) REFERENCES  Location_7_1107TERM_8_1107( RoomID )
                                                                                                     *
ERROR at line 1:
ORA-00942: table or view does not exist 


SQL> ALTER TABLE COURSE_4_1107 ADD CONSTRAINT COURSE_4_PreReq_FK FOREIGN KEY (PreReq) REFERENCES  Course_4_1107TERM_8_1107( CourseID );
ALTER TABLE COURSE_4_1107 ADD CONSTRAINT COURSE_4_PreReq_FK FOREIGN KEY (PreReq) REFERENCES  Course_4_1107TERM_8_1107( CourseID )
                                                                                             *
ERROR at line 1:
ORA-00942: table or view does not exist 


SQL> spool out;


SQL> CREATE TABLE JOBS_1107(job_id number(6), job_title VARCHAR2(30), min_salary NUMBER(4), max_salary NUMBER(5) CONSTRAINT JOBS1107_maxi_chk CHECK( max_salary <= 25000));

Table created.

SQL> spool out;

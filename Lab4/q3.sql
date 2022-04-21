SQL> CREATE TABLE COUNTRIES3_1107(country_id NUMBER(4), country_name VARCHAR2(10) CONSTRAINT C31107country_name_chk CHECK( country_name = ANY('UAE','India','Japan') ) , region_id NUMBER(3));

Table created.

SQL> spool out;

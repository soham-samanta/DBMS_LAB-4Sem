declare

a number(5);

begin

a:=&a;
    CASE a
        WHEN 1 THEN dbms_output.put_line('Monday');
        WHEN 2 THEN dbms_output.put_line('Tuesday');
        WHEN 3 THEN dbms_output.put_line('Wednesday');
        WHEN 4 THEN dbms_output.put_line('Thursday');
        WHEN 5 THEN dbms_output.put_line('Friday');
        WHEN 6 THEN dbms_output.put_line('Saturday');
        WHEN 7 THEN dbms_output.put_line('Sunday');
        ELSE dbms_output.put_line('Wrong Input !!!');
    END CASE;
END;
/
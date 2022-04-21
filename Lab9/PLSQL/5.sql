declare

a varchar(20);
b varchar(20);



begin
a:='&a';
b:='&b';


dbms_output.put_line('Name = '||b||' , '||a);

end;
/
declare

a number(5);
b number(5);

begin
a:=&a;
b:=&b;

if a>b then
dbms_output.put_line('a is greater ');
else
dbms_output.put_line('b is greater ');
end if;
end;
/
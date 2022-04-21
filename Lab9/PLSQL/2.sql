declare

a number(3);
s number(5,2);
c number(5,2);

begin
a:=&a;
s:=a*a;
c:=a*a*a;
dbms_output.put_line('Square '||'= '||s);
dbms_output.put_line('Cube '||'= '||c);
end;
/
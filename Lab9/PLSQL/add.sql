declare
a number(3);
b number(3);
c number(3);
begin
a:=&a;
b:=&b;
c:=a+b;
dbms_output.put_line(a||'+'||b||'='||c);
end;
/
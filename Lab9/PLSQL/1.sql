declare
p constant number(5,2):=3.141;
r number(3);
c number(5,2);
s number(5,2);

begin
r:=&r;
c:=p*r*r;
s:=2*p*r;
dbms_output.put_line('area '||'= '||c);
dbms_output.put_line('Circumference '||'= '||s);
end;
/
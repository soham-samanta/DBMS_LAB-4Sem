declare

a number(3);
b number(3);
tmp number(3);


begin
a:=&a;
b:=&b;

dbms_output.put_line('Before Swapping '||'a= '||a||' '||'b= '||b);
tmp:=a;
a:=b;
b:=tmp;
dbms_output.put_line('After Swapping '||'a= '||a||' '||'b= '||b);

end;
/
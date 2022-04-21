declare
-- tax constant number(5):=28;
hour number(10);
rate number(10);
ans number(10);
total number(10);


begin
hour:=&hour;
rate:=&rate;

ans:=hour*rate;
total:=ans-(0.28*100);

dbms_output.put_line('total after taxation '||total);

end;
/
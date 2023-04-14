DECLARE
a number;
b number;
c number;

a_to_big EXCEPTION;

BEGIN

a:=&a;
b:=&b;
c:= a+b;

IF  a >20 THEN
RAISE a_to_big ;
end if;

DBMS_OUTPUT.PUT_LINE('The value of a is : '||a||' and the vaue of b  '||b||' c= a+b is: '||c);

EXCEPTION

WHEN a_to_big THEN
dbms_output.put_line('-------------------------------------------------');
dbms_output.put_line('                  EXCEPTION START HERE ');
dbms_output.put_line('-------------------------------------------------');
dbms_output.put_line('The value of a is to big try again');
WHEN NO_DATA_FOUND THEN 
dbms_output.put_line('-------------------------------------------------');
dbms_output.put_line('                  EXCEPTION START HERE ');
dbms_output.put_line('-------------------------------------------------');
DBMS_OUTPUT.PUT_LINE('SORRY NO DATA FOUND TRY AGAIN !!');

END;
/
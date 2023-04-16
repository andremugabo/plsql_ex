DECLARE

-- taking input for variable one
a integer :=&a;
-- taking input for variable two
b integer :=&b;
c integer;

BEGIN

c:=a+b;

dbms_output.put_line(' The sum of '||a||' and '||b||' is '||c);

END;
/ 
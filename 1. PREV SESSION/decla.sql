-- daclaration

DECLARE

var1 INTEGER;
var2 VARCHAR2(20);

BEGIN

var1:=1;
var2:='akabenzi';

dbms_output.put_line('The number in var1 is :'||var1||' and characters are :'||var2);

END;
/
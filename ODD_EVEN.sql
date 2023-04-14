DECLARE

NUM_V number:=&NUM_V;

BEGIN

IF MOD(NUM_V,2) = 0 THEN

dbms_output.put_line(NUM_V||' is even');

ELSE 

dbms_output.put_line(NUM_V||' is odd');

END IF;

EXCEPTION

WHEN OTHERS THEN
dbms_output.put_line('some problem occurs');

END;
/
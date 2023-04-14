DECLARE

NUM1 NUMBER;
NUM2 NUMBER;
tmp NUMBER;

BEGIN

NUM1:=&NUM1;
NUM2:=&NUM2;

IF NUM1 > NUM2 THEN
tmp := NUM1;
NUM1:= NUM2;
NUM2:=tmp;
dbms_output.put_line('The new value of NUM1 IS: '||NUM1||' AND FOR NUM2 IS: '||NUM2);
END IF;
DBMS_OUTPUT.PUT_LINE('NUM1 IS : '||NUM1||' NUM2 IS: '||NUM2);



EXCEPTION
WHEN OTHERS THEN
DBMS_OUTPUT.PUT_LINE('Some error has occur');

END;
/

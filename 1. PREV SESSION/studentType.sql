DECLARE

sName student.st_name %TYPE;
sId number;
--TOO_MANY_ROWS EXCEPTION;
--PRAGMA EXCEPTION_INIT(TOO_MANY_ROWS,-20003);

BEGIN
sId:=&sId;
SELECT st_name INTO sName FROM student WHERE ID = sId ;
--IF TOO_MANY_ROWS THEN
--RAISE_APPLICATION_ERROR(-20003,'SORRY TOO MANY ROWS');
--END IF;

DBMS_OUTPUT.PUT_LINE('The name of the student is :'||sName);

EXCEPTION

WHEN NO_DATA_FOUND THEN
DBMS_OUTPUT.PUT_LINE('NO DATA FOUND !!');
WHEN TOO_MANY_ROWS THEN
DBMS_OUTPUT.PUT_LINE('TOO MANY ROWS');

END;
/
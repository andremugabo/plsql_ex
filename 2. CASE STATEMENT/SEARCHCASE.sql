DECLARE

num_v number:=&num_v;

BEGIN

CASE
WHEN  MOD(num_v,2) = 0 THEN 
    dbms_output.put_line(num_v||' IS AN EVEN NUMBER');
ELSE 
    dbms_output.put_line(num_v||' IS AN ODD NUMBER');
END CASE;

EXCEPTION

WHEN others THEN
dbms_output.put_line('some errors ocurs');
END;
/
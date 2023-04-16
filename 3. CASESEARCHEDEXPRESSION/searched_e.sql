DECLARE

v_num number:=&v_num;
v_result varchar2(30);

BEGIN

v_result := 

CASE 
    WHEN MOD(v_num,2)=0 THEN 
        v_num||' is even'
    ELSE
        v_num||' is odd'
    END;
    dbms_output.put_line(v_result);
    dbms_output.put_line('DONE');
    END;
    /        
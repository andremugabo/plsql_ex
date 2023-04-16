DECLARE 

v_num number :=&v_num;
v_num_flag number;
v_result VARCHAR2(30);

BEGIN

v_num_flag:=mod(v_num,2);

v_result:=
CASE v_num_flag 
    when 0 then v_num||' is even'
    else v_num||' is odd'
END;
dbms_output.put_line(v_result);
dbms_output.put_line('DONE');
END;
/    
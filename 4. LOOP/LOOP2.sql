DECLARE 
v_num binary_integer:=0;
BEGIN
    LOOP
        v_num:=v_num + 1;
        dbms_output.put_line('v_num : '||v_num);
         exit when v_num = 5; 
    END LOOP;
    dbms_output.put_line('DONE ... ');
END;
/     
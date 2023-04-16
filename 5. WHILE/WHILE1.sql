DECLARE
v_num number :=4;
BEGIN
while v_num < 5 LOOP
    dbms_output.put_line(' v_num is :'||v_num);
    v_num := v_num - 1;
end loop;
END;
/    
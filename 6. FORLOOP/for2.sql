BEGIN
FOR v_counter IN 1..5 LOOP
    v_counter:= v_counter + 1;
    dbms_output.put_line('The v_counter is : '||v_counter);
END LOOP;
END;
/    
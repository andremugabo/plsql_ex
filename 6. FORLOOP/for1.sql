BEGIN
FOR v_counter IN 1..5 LOOP
        dbms_output.put_line('The v_counter is :'||v_counter);
END LOOP;
END;
/        
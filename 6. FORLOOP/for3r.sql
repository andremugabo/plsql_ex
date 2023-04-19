BEGIN
FOR v_counter IN REVERSE 1..5 LOOP
    DBMS_OUTPUT.PUT_LINE('The v_counter is :'||v_counter);
END LOOP;
END;
/    
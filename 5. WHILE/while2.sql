DECLARE

v_counter binary_integer:=1;
v_sum number:=0;

BEGIN

WHILE v_counter <= 10 LOOP
    v_sum := v_sum + v_counter;
    dbms_output.put_line('Current sum is :'||v_sum);
    v_counter := v_counter + 1;
END LOOP;
dbms_output.put_line('The sum of integers between 1 and 10 :'||v_sum);
END;
/    
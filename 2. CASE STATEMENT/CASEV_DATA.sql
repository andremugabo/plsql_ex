DECLARE 
v_date date := TO_DATE('&v_date','DD-MON-YYYY');
v_day varchar2(1);
BEGIN
v_day:=TO_CHAR(v_date,'D');
dbms_output.put_line(v_day);
CASE v_day
    WHEN 1 THEN 
        dbms_output.put_line(' LUNDI');
    WHEN 2 THEN
        dbms_output.put_line(' MARDI ');
    WHEN 3 THEN
        dbms_output.put_line(' MERCREDI ');
    WHEN 4 THEN 
        dbms_output.put_line(' JEUDI ');
    WHEN 5 THEN
        dbms_output.put_line(' VENDREDI');
    WHEN 6 THEN
        dbms_output.put_line(' SAMEDI');
    WHEN 7 THEN
        dbms_output.put_line(' DIMANCHE');
    ELSE
        dbms_output.put_line(' WRONG DATE');
    END CASE;
    EXCEPTION
    WHEN OTHERS THEN
        dbms_output.put_line(' some errors occurs');

END;
/

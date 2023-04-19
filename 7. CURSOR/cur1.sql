DECLARE 
CURSOR cur_employee IS SELECT EMP_FNAME FROM employee;
v_emp_fname employee.emp_fname%type;
BEGIN
    OPEN cur_employee;
        LOOP
            FETCH cur_employee INTO v_emp_fname;
            IF cur_employee%NOTFOUND THEN
                EXIT;
            END IF;
            dbms_output.put_line('employee firstName is :'||v_emp_fname);
        END LOOP;
    CLOSE cur_employee;
    EXCEPTION
    WHEN no_data_found THEN
    dbms_output.put_line('NO DATA FOUND');
    WHEN OTHERS THEN
    dbms_output.put_line('SOME ERROR OCCURS');
END;
/                
DECLARE 
e_empId employees.employee_id%type;
e_fName employees.first_name%type;

BEGIN
e_empId := &e_empId;
select first_name INTO e_fName FROM employees WHERE employee_id = e_empId;



DBMS_OUTPUT.PUT_LINE('THE FIRST NAME IS  :'||e_fName);

EXCEPTION

WHEN NO_DATA_FOUND THEN 
DBMS_OUTPUT.PUT_LINE('SORRY NO DATA FOUND !!!');
WHEN TOO_MANY_ROWS THEN
DBMS_OUTPUT.PUT_LINE('SORRY TOO MANY ROWS');
WHEN OTHERS THEN 
DBMS_OUTPUT.PUT_LINE('SOME ERROR OCCURS ');

END;
/








-- system defined exception 

DECLARE 

emp_code employees.employee_id%type:=&employee_id;
emp_name employees.first_name%type;

BEGIN

SELECT first_name INTO emp_name FROM employees WHERE employee_id = emp_code;
dbms_output.put_line('An employee with '||emp_code||' as ID is named as: '||emp_name);

EXCEPTION

WHEN no_data_found THEN
dbms_output.put_line('The employee with id :'||emp_code||' does not exist');
WHEN others THEN
dbms_output.put_line('Some error have occurred');

END;
/

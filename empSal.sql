DECLARE 
emp_Id employee.empId%TYPE;
empSalary employee.sal%TYPE;
salAvg float;

bonus_not_allowed EXCEPTION;
PRAGMA EXCEPTION_INIT(bonus_not_allowed,-20001);

BEGIN
emp_Id := &emp_Id;
SELECT sal INTO empSalary FROM employee WHERE empId = emp_Id;
SELECT AVG(SAL) INTO salAvg FROM employee;

IF empSalary > salAvg THEN
RAISE_APPLICATION_ERROR(-20001,'THIS EMPLOYEE IS NOT ALLOWED A BONUS');
ELSE
DBMS_OUTPUT.PUT_LINE('The bonus will be added !!');

END IF;

EXCEPTION

WHEN NO_DATA_FOUND THEN
DBMS_OUTPUT.PUT_LINE('SORRY NO DATA FOUND TRY AGAIN!!');
WHEN bonus_not_allowed THEN
DBMS_OUTPUT.PUT_LINE(SQLERRM);
WHEN TOO_MANY_ROWS THEN
DBMS_OUTPUT.PUT_LINE('SORRY TOO MANY ROWS ');
WHEN OTHERS THEN
DBMS_OUTPUT.PUT_LINE('AN ERROR HAS OCCURRED !!');

END ;
/


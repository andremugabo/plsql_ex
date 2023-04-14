-- Variable Attribute 

DECLARE 

student_name student.st_name%type;

BEGIN

SELECT st_name INTO student_name FROM student WHERE ID = 1;
dbms_output.put_line('The Student name is :'||student_name);

end;
/
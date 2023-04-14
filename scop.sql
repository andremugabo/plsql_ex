-- scope Global 

DECLARE 

-- Global variables

g_num1 number :=95;
g_num2 number :=85;

BEGIN 

dbms_output.put_line('Outer Variable num1:'||g_num1);
dbms_output.put_line('Outer Variable num2:'||g_num2);

	DECLARE
		--local variables
		l_num1 number := 195;
		l_num2 number := 185;
	BEGIN

		dbms_output.put_line('Inner Variable num1:'||l_num1);
		dbms_output.put_line('Inner Variable num2:'||l_num2);
	END;	
END;
/
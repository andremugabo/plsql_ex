-- USER DEFINE EXCEPTION ERROR

DECLARE 

	a number :=&num1;
	b number :=&num2;
	c number;
 	check_user_number1 EXCEPTION;
	check_user_number2 EXCEPTION;
BEGIN

	IF a < 15 THEN
	RAISE check_user_number1;
	END IF;
	IF b < 10 THEN
	RAISE check_user_number2;
	END IF;	
	c:=a+b;
	dbms_output.put_line('The sum is '||c);

EXCEPTION

	WHEN check_user_number1 THEN
	dbms_output.put_line('The number must be greater than 15');
	WHEN check_user_number2 THEN
	dbms_output.put_line('The number must be greater than 10');


END;
/
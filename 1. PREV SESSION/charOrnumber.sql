DECLARE
  input_char CHAR(1) := 'A'; -- replace with your desired input character
  char_type  VARCHAR2(10);
BEGIN
  IF REGEXP_LIKE(input_char, '^[[:alpha:]]+$') THEN
    char_type := 'Letter';
  ELSIF REGEXP_LIKE(input_char, '^[[:digit:]]+$') THEN
    char_type := 'Number';
  ELSE
    char_type := 'Other';
  END IF;
  DBMS_OUTPUT.PUT_LINE('The character ' || input_char || ' is a ' || char_type);
END;
/
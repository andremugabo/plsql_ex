DECLARE
 -- variable a
    A INTEGER := &A;
 -- variable b
    B INTEGER := &B;
 -- variable c
    C INTEGER:=&C;
 -- variable d
    D INTEGER;
BEGIN
    D := A+B+C;
    DBMS_OUTPUT.PUT_LINE('The addition of  '
        ||A
        ||' and '
        ||B
        ||' and '
        ||C
        ||' is '
        ||D);
END;
/
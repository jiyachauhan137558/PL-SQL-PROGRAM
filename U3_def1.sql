set serveroutput on
DECLARE
    a NUMBER := 10;
    b NUMBER := 0;
    c NUMBER;
BEGIN
    c := a / b;
    DBMS_OUTPUT.PUT_LINE('Result: ' || c);

EXCEPTION
    WHEN ZERO_DIVIDE THEN
        DBMS_OUTPUT.PUT_LINE('Error: Division by zero not allowed');
END;
/
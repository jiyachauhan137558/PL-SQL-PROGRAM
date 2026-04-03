CREATE OR REPLACE FUNCTION get_square(x NUMBER)
RETURN NUMBER
IS
BEGIN
    RETURN x * x;
END;
/
DECLARE
    result NUMBER;
BEGIN
    result := get_square(5);
    DBMS_OUTPUT.PUT_LINE('Square is: ' || result);
END;
/
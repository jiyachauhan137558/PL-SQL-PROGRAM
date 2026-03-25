DECLARE
    sal NUMBER;
    age NUMBER;
BEGIN
    SELECT basicsal, age INTO sal, age
    FROM emp
    WHERE age = 50;

    DBMS_OUTPUT.PUT_LINE('basicsal: ' || sal);

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('No employee with age 50');
END;
/
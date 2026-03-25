SET SERVEROUTPUT ON
DECLARE
    v_name VARCHAR2(50) := '&enter_name';
    v_marks NUMBER;
BEGIN
    SELECT marks INTO v_marks
    FROM student
    WHERE sname = v_name;

    DBMS_OUTPUT.PUT_LINE('Marks: ' || v_marks);

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Student not found');
END;
/
SET SERVEROUTPUT ON;

DECLARE
    -- Cursor to fetch male employees from HR department
    CURSOR emp_cursor IS
        SELECT EID, EName, Deptno, Deptname, Gender, Age, BasicSal
        FROM EMP
        WHERE UPPER(Gender) = 'MALE'
        AND UPPER(Deptname) = 'HR';

BEGIN
    -- Loop through cursor
    FOR emp_rec IN emp_cursor LOOP
        DBMS_OUTPUT.PUT_LINE('EID: ' || emp_rec.EID);
        DBMS_OUTPUT.PUT_LINE('Name: ' || emp_rec.EName);
        DBMS_OUTPUT.PUT_LINE('Department No: ' || emp_rec.Deptno);
        DBMS_OUTPUT.PUT_LINE('Department Name: ' || emp_rec.Deptname);
        DBMS_OUTPUT.PUT_LINE('Gender: ' || emp_rec.Gender);
        DBMS_OUTPUT.PUT_LINE('Age: ' || emp_rec.Age);
        DBMS_OUTPUT.PUT_LINE('Basic Salary: ' || emp_rec.BasicSal);
        DBMS_OUTPUT.PUT_LINE('-----------------------------');
    END LOOP;

END;
/
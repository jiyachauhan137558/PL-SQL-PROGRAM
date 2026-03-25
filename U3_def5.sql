SET SERVEROUTPUT ON;

DECLARE
    CURSOR c_emp IS 
        SELECT * FROM emp WHERE deptno = &enter_dept_no;
    
    v_emp_rec emp%ROWTYPE;
    v_count NUMBER := 0;
    NO_DEPT_FOUND EXCEPTION;

BEGIN
    OPEN c_emp;
    LOOP
        FETCH c_emp INTO v_emp_rec;
        EXIT WHEN c_emp%NOTFOUND;
        
        INSERT INTO emp_backup VALUES v_emp_rec;
        v_count := v_count + 1;
    END LOOP;
    CLOSE c_emp;

    IF v_count = 0 THEN
        RAISE NO_DEPT_FOUND;
    ELSE
        DBMS_OUTPUT.PUT_LINE(v_count || ' records copied.');
        COMMIT;
    END IF;

EXCEPTION
    WHEN NO_DEPT_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Error: NO_DEPT_FOUND');
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
END;
/
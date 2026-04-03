CREATE OR REPLACE FUNCTION get_balance(acc_no NUMBER)
RETURN NUMBER
IS
    bal NUMBER;
BEGIN
    SELECT BALANCE INTO bal
    FROM ACCOUNT
    WHERE ACNO = acc_no;

    RETURN bal;
END;
/
DECLARE
    result NUMBER;
BEGIN
    result := get_balance(101);
    DBMS_OUTPUT.PUT_LINE('Balance is: ' || result);
END;
/
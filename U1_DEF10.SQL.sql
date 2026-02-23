SET SERVEROUTPUT ON;

DECLARE
   v_eid EMP.EID%TYPE := &Enter_EID;
BEGIN
   DELETE FROM EMP
   WHERE EID = v_eid;

   IF SQL%ROWCOUNT > 0 THEN
      DBMS_OUTPUT.PUT_LINE('Record Deleted Successfully.');
   ELSE
      DBMS_OUTPUT.PUT_LINE('Employee ID Not Found.');
   END IF;

   COMMIT;
END;
/
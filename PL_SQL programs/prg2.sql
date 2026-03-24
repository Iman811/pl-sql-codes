SET SERVEROUTPUT ON
DECLARE
	sal NUMBER;
BEGIN
	sal := &sal;
	IF sal >= 50000 then
		DBMS_OUTPUT.PUT_LINE('Grade A');
	ELSIF sal >= 30000 then
		DBMS_OUTPUT.PUT_LINE('Grade B');
	ELSE
		DBMS_OUTPUT.PUT_LINE('Grade C');
	END IF;
END;
/
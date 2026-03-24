set serveroutput on

DECLARE
	num	NUMBER;
	rev	NUMBER := 0;
	rem	NUMBER;
BEGIN
	num := &num;
	WHILE num > 0 LOOP
		rem := MOD(num, 10);
		rev := (rev * 10) + rem;
		num := TRUNC(num / 10);
	END LOOP;
	DBMS_OUTPUT.PUT_LINE('Reversed number: ' || rev);
END;
/
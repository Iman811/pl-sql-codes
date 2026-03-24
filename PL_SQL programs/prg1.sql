set serveroutput on
DECLARE
	num NUMBER;
BEGIN
	num := &num;
	if num > 0 then
		DBMS_OUTPUT.PUT_LINE('Hello');
	END if;
END;
/
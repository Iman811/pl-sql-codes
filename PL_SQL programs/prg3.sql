set serveroutput on

DECLARE
	v_sal NUMBER;
BEGIN
	v_sal := &salary;
	if v_sal > 3000 then
		v_sal := v_sal + 500;
	END if;
	DBMS_OUTPUT.PUT_LINE('Updated Salary: ' || v_sal);
END;
/
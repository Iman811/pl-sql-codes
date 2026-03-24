set serveroutput on

BEGIN
	UPDATE employee
	SET salary = salary + 1000;

	IF SQL%ROWCOUNT = 0 THEN
		DBMS_OUTPUT.PUT_LINE('None of the salaries were updated');
	ELSE
		DBMS_OUTPUT.PUT_LINE('Salaries for ' || SQL%ROWCOUNT ||
			' employees are updated');
	END IF;
END;
/
CREATE OR REPLACE FUNCTION
calculate_age (
	p_emp_id NUMBER
)
RETURN NUMBER
AS
	v_dob employee.dob%TYPE;
	v_age NUMBER;
BEGIN
	SELECT dob
	INTO v_dob
	FROM employee
	WHERE emp_id = p_emp_id;

	v_age := TRUNC(MONTHS_BETWEEN(SYSDATE, V_DOB) / 12);

	RETURN v_age;

	EXCEPTION
		WHEN NO_DATA_FOUND THEN
			RETURN NULL;
END;
/

set serveroutput on

DECLARE
	v_age NUMBER;
BEGIN
	v_age := calculate_age(11);
	dbms_output.put_line('Age: ' || v_age);
END;
/
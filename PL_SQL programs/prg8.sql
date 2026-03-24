set serveroutput on

DECLARE
	dept_id NUMBER;
	dept_name VARCHAR2(20);
BEGIN
	dept_id := &dept_id;

	CASE dept_id
		WHEN 10 THEN dept_name := 'Finance';
		WHEN 20 THEN dept_name := 'HR';
		WHEN 30 THEN dept_name := 'IT';
		WHEN 40 THEN dept_name := 'Sales';

		ELSE
			dept_name := 'Invalid department';
	END CASE;
	DBMS_OUTPUT.PUT_LINE('Department Name: ' || dept_name);
END;
/
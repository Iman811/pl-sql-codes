CREATE OR REPLACE PROCEDURE
update_salary (
	p_emp_id IN employee.emp_id%TYPE,
	p_percent IN NUMBER
)
AS
BEGIN
	UPDATE employee
	SET salary = salary + (salary * p_percent / 100)
	WHERE emp_id = p_emp_id;

	IF SQL%ROWCOUNT = 0 THEN
		DBMS_OUTPUT.PUT_LINE('Employee not found.');
	ELSE
		DBMS_OUTPUT.PUT_LINE('Salary updated successfully.');
	END IF;

	COMMIT;
END;
/

set serveroutput on

BEGIN 
	update_salary(11, 10);
END;
/
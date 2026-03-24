CREATE OR REPLACE PROCEDURE
insert_employee (
	p_emp_id IN NUMBER,
	p_emp_name IN VARCHAR2
) AS
BEGIN
	INSERT INTO employee (emp_id, emp_name)
	VALUES (p_emp_id, p_emp_name);

	COMMIT;
END;
/
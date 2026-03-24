set serveroutput on

DECLARE
	v_emp_id	employee.emp_id%TYPE;
	v_name		employee.emp_name%TYPE;
	v_salary	employee.salary%TYPE;
BEGIN
	v_emp_id := &emp_id;

	SELECT emp_name, salary
	INTO v_name, v_salary
	FROM employee
	WHERE emp_id = v_emp_id;

	DBMS_OUTPUT.PUT_LINE('Employee Name: ' || v_name);
	DBMS_OUTPUT.PUT_LINE('Salary: ' || v_salary);
END;
/
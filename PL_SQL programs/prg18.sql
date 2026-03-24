CREATE OR REPLACE PROCEDURE show_emp (
	p_emp_id IN employee.emp_id%TYPE
)
AS
	v_name employee.emp_name%TYPE;
	v_salary employee.salary%TYPE;
	v_dept_name employee.dept_name%TYPE;
BEGIN
	SELECT emp_name, salary, dept_name
	INTO v_name, v_salary, v_dept_name
	FROM employee
	WHERE emp_id = p_emp_id;

	DBMS_OUTPUT.PUT_LINE('Employee Name: ' || v_name);
	DBMS_OUTPUT.PUT_LINE('Salary: ' || v_salary);
	DBMS_OUTPUT.PUT_LINE('Department: ' || v_dept_name);

	EXCEPTION
		WHEN NO_DATA_FOUND THEN
			DBMS_OUTPUT.PUT_LINE('Employee not found.');
END;
/

set serveroutput on

BEGIN
	show_emp(11);
END;
/
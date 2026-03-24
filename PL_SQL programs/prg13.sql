CREATE OR REPLACE PROCEDURE
get_emp_details (
	p_emp_id IN employee.emp_id%TYPE,
	p_emp_name OUT employee.emp_name%TYPE,
	p_dept_name OUT employee.dept_name%TYPE
) AS
BEGIN
	SELECT emp_name, dept_name
	INTO p_emp_name, p_dept_name
	FROM employee
	WHERE emp_id = p_emp_id;
END;
/

set serveroutput on

DECLARE
	v_name employee.emp_name%TYPE;
	v_dept_name employee.dept_name%TYPE;
BEGIN
	get_emp_details(11, v_name, v_dept_name);
	dbms_output.put_line('Employee Name: ' || v_name);
	dbms_output.put_line('Department : ' || v_dept_name);
END;
/
CREATE OR REPLACE PROCEDURE
get_employee_details (
	p_emp_id IN employee.emp_id%TYPE
) AS
	v_name employee.emp_name%TYPE;
	
	v_designation employee.designation%TYPE;

	v_salary employee.salary%TYPE;
BEGIN
	SELECT emp_name, designation, salary
	INTO v_name, v_designation, v_salary
	FROM employee
	WHERE emp_id = p_emp_id;

	DBMS_OUTPUT.PUT_LINE('Employee Name: ' || v_name);
	DBMS_OUTPUT.PUT_LINE('Designation: ' || v_designation);
	DBMS_OUTPUT.PUT_LINE('Salary: ' || v_salary);
END;
/
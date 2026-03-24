set serveroutput on

DECLARE
	v_emp_id NUMBER;
	v_name VARCHAR2(30);
	v_salary NUMBER;
BEGIN
	v_emp_id := &emp_id;

	SELECT emp_name, salary
	INTO v_name, v_salary
	FROM employee
	WHERE emp_id = v_emp_id;

	DBMS_OUTPUT.PUT_LINE('Employee name: ' || v_name);
	DBMS_OUTPUT.PUT_LINE('Salary: ' || v_salary);
END;
/
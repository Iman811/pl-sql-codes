set serveroutput on

DECLARE
	CURSOR emp_cursor IS
		SELECT emp_id, emp_name, salary
		FROM employee;

	v_id employee.emp_id%TYPE;
	v_name employee.emp_name%TYPE;
	v_salary employee.salary%TYPE;
BEGIN
	OPEN emp_cursor;

	LOOP
		FETCH emp_cursor INTO v_id, v_name, v_salary;
		EXIT WHEN emp_cursor%NOTFOUND;

		DBMS_OUTPUT.PUT_LINE('Employee ID : ' || v_id);
		DBMS_OUTPUT.PUT_LINE('Name : ' || v_name);
		DBMS_OUTPUT.PUT_LINE('Salary : ' || v_salary);
		DBMS_OUTPUT.PUT_LINE('-----------------------');
	END LOOP;
	
	CLOSE emp_cursor;
END;
/
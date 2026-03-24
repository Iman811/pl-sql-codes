set serveroutput on

DECLARE
	v_salary employee.salary%TYPE;
BEGIN	
	SELECT MAX(SALARY)
	INTO v_salary
	FROM employee;

	dbms_output.put_line('Highest salary: ' || v_salary);
END;
/
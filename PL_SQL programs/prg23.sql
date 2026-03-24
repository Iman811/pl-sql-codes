set serveroutput on

DECLARE
	CURSOR emp_cursor IS
		SELECT emp_id, emp_name, salary
		FROM employee
		WHERE deptno = 10;
	
	v_new_salary employee.salary%TYPE;

BEGIN
	FOR emp_rec IN emp_cursor LOOP
		v_new_salary := emp_rec.salary * 1.10;

		UPDATE employee
		SET salary = v_new_salary
		WHERE emp_id = emp_rec.emp_id;

		DBMS_OUTPUT.PUT_LINE('Employee: ' || emp_rec.emp_name ||
			'Old salary: ' || emp_rec.salary ||
			'New salary: ' || v_new_salary
		);
	END LOOP;

	COMMIT;
END;
/
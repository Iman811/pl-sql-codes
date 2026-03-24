set serveroutput on

DECLARE
	CURSOR emp_cursor IS
		SELECT emp_id, emp_name, job, salary
		FROM employee
		WHERE job IN ('MANAGER', 'ANALYST');

BEGIN
	FOR emp_rec IN emp_cursor LOOP
		DBMS_OUTPUT.PUT_LINE(
			'Emp ID.: ' || emp_rec.emp_id ||
			'Name: ' || emp_rec.emp_name ||
			'Job: ' || emp_rec.job ||
			'Salary: ' || emp_rec.salary
		);
	END LOOP;
END;
/
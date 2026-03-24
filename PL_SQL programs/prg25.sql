set serveroutput on

DECLARE
	CURSOR c_highest IS
		SELECT emp_id, emp_name, salary
		FROM employee
		ORDER BY salary DESC
		FETCH FIRST 5 ROWS ONLY;

BEGIN
	FOR rec IN c_highest LOOP
		DBMS_OUTPUT.PUT_LINE(
			'Empno: ' || rec.emp_id ||
			'Name : ' || rec.emp_name ||
			'Salary: ' || rec.salary
		);
	END LOOP;
END;
/
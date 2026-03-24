create table employee (
	emp_id NUMBER,
	emp_name VARCHAR2(20),
	salary NUMBER
);

set serveroutput on

BEGIN
	FOR i IN 1..10 LOOP
		INSERT INTO employee (emp_id, emp_name, salary)
		VALUES (i, 'Employee' || i, 3000 + (i * 500));
	END LOOP;

	COMMIT;
	DBMS_OUTPUT.PUT_LINE('10 rows inserted into employee table');
END;
/
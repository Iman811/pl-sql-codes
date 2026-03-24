CREATE OR REPLACE FUNCTION
count_emp_dept (
	p_deptno IN employee.deptno%TYPE
)
RETURN NUMBER
AS
	v_count NUMBER;
BEGIN
	SELECT COUNT(*)
	INTO v_count
	FROM employee
	WHERE deptno = p_deptno;

	RETURN v_count;
END;
/

set serveroutput on

DECLARE
	v_total NUMBER;
BEGIN
	v_total := count_emp_dept(10);
	dbms_output.put_line('Number of employees in department 10: ' || v_total);
END;
/
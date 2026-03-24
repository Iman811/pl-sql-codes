CREATE OR REPLACE FUNCTION
total_salary_dept (
	p_deptno IN employee.deptno%TYPE
)
RETURN NUMBER
AS
	v_total_salary NUMBER;
BEGIN
	SELECT SUM(salary)
	INTO v_total_salary
	FROM employee
	WHERE deptno = p_deptno;

	RETURN NVL(v_total_salary, 0);
END;
/

set serveroutput on

DECLARE
	v_total NUMBER;
BEGIN
	v_total := total_salary_dept(10);
	dbms_output.put_line('Total Salary of the department 10: ' || v_total);
END;
/
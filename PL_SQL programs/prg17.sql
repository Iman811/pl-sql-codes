CREATE OR REPLACE FUNCTION
calc_bonus (
	p_emp_id IN employee.emp_id%TYPE
)
RETURN NUMBER
AS
	v_salary employee.salary%TYPE;
	v_bonus NUMBER;
BEGIN
	SELECT salary
	INTO v_salary
	FROM employee
	WHERE emp_id = p_emp_id;

	v_bonus := v_salary * 0.20;
	
	RETURN v_bonus;
END;
/

set serveroutput on

DECLARE
	v_bonus NUMBER;
BEGIN
	v_bonus := calc_bonus(10);
	dbms_output.put_line('Bonus: ' || v_bonus);
END;
/
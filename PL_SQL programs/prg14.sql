CREATE OR REPLACE PROCEDURE
count_grade_by_dept (
	p_deptno IN employee.deptno%TYPE
) AS
	v_gradeA NUMBER;
	v_gradeB NUMBER;
	v_gradeC NUMBER;
BEGIN
	SELECT COUNT(CASE WHEN salary >= 50000 THEN 1 END),
	COUNT(CASE WHEN salary >= 30000 AND salary < 50000 THEN 1 END),
	COUNT(CASE WHEN salary < 30000 THEN 1 END)
	INTO v_gradeA, v_gradeB, v_gradeC 
	FROM employee WHERE deptno = p_deptno;

	dbms_output.put_line('Department No.: ' || p_deptno);
	dbms_output.put_line('Grade A Employees: ' || v_gradeA);
	dbms_output.put_line('Grade B Employees: ' || v_gradeB);
	dbms_output.put_line('Grade C Employees: ' || v_gradeC);
END;
/

set serveroutput on

BEGIN
	count_grade_by_dept(10);
END;
/
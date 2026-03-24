set serveroutput on;
DECLARE
	n NUMBER := 10;
	a NUMBER := 0;
	b NUMBER :=1;
	temp NUMBER;
BEGIN
	dbms_output.put_line('Fibonacci series upto ' || n || ' terms:');
	for i in 1..n loop
		dbms_output.put(a || ' ');
		temp := a + b;
		a := b;
		b := temp;
	END loop;
	dbms_output.put_line('');
END;
/
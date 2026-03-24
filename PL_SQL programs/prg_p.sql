set serveroutput on;

declare
	a number := 10;
begin
	dbms_output.put_line(a + 10);
end;
/
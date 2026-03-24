set serveroutput on

DECLARE
	sum_odd NUMBER := 0;
	odd NUMBER;
BEGIN
	FOR i IN 1..100 LOOP
		odd := (2 * i) - 1;
		sum_odd := sum_odd + odd;
	END LOOP;

	DBMS_OUTPUT.PUT_LINE('Sum of first 100 odd natural numbers: ' || sum_odd);
END;
/
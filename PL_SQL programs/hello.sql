set servroutput on;
DECLARE

a INT:=-1;
b INT:=1:
c INT;
i INT;
n INT;

BEGIN
n:=&n;
FOR i in 1..n LOOP
	c:=a+b;
	a:=b;
	b:=c;

	DBMS_OUTPUT.PUT_LINE(c);
END LOOP;
END;
/
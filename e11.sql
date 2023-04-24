create or replace function adder(n1 in number, n2 in number)
return number
is
n3 number(8);
begin
n3 :=n1+n2;
return n3;
end;
/
DECLARE
n3 number(2);
BEGIN
n3 := adder(11,22);
dbms_output.put_line('Addition is: ' || n3);
END;
/

create or replace function fact(n number)
return number is
i number(10);
f number:=1;
begin
for i in 1..N loop
f:=f*i;
end loop;
return f;
end;
/
DECLARE
  n3 number(20);
  BEGIN
  n3 :=fact(10);
  dbms_output.put_line('factorial of given number is: ' || n3);
  END;
  /


CREATE OR REPLACE FUNCTION is_prime(n IN NUMBER) RETURN BOOLEAN IS
  i NUMBER := 2;
BEGIN
  IF n <= 1 THEN
    RETURN FALSE; 
  END IF;

  WHILE i <= SQRT(n) LOOP
    IF MOD(n, i) = 0 THEN
      RETURN FALSE;
    END IF;
    i := i + 1;
  END LOOP;

  RETURN TRUE;
END;
/
DECLARE
  n NUMBER := 8;
  prime BOOLEAN;
BEGIN
  prime := is_prime(n);
  IF prime THEN
    DBMS_OUTPUT.PUT_LINE(n || ' is prime');
  ELSE
    DBMS_OUTPUT.PUT_LINE(n || ' is not prime');
  END IF;
END;
/


CREATE OR REPLACE FUNCTION get_salary(empid IN NUMBER) RETURN NUMBER IS
  salary NUMBER;
BEGIN
  SELECT sal INTO salary FROM emp WHERE empno = empid;
  RETURN salary;
END;
/
DECLARE
  empid NUMBER := 7839;
  salary NUMBER;
BEGIN
  salary := get_salary(empid);
  DBMS_OUTPUT.PUT_LINE('Employee ' || empid || ' has a salary of ' || salary);
END;
/
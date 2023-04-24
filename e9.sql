DECLARE
a number;
b number;
c number;
BEGIN
dbms_output.put_line('Enter a:');
a:=&a;
dbms_output.put_line('Enter b:');
b:=&b;
dbms_output.put_line('Enter c:');
c:=&c;
dbms_output.put_line('NUMBERS');
IF a>b AND a>c THEN
	dbms_output.put_line('A is Maximum');
ELSIF (b>a) and (b>c) THEN
	dbms_output.put_line('B is Maximum');
ELSE
	dbms_output.put_line('C is Maximum');
end if;
end;
/


DECLARE
   num1 NUMBER := 10;
   num2 NUMBER := 20;
   temp NUMBER;
BEGIN
   DBMS_OUTPUT.PUT_LINE('Before swapping:');
   DBMS_OUTPUT.PUT_LINE('num1 = ' || num1);
   DBMS_OUTPUT.PUT_LINE('num2 = ' || num2);

   temp := num1;
   num1 := num2;
   num2 := temp;

   DBMS_OUTPUT.PUT_LINE('After swapping:');
   DBMS_OUTPUT.PUT_LINE('num1 = ' || num1);
   DBMS_OUTPUT.PUT_LINE('num2 = ' || num2);
END;


DECLARE
   num NUMBER := 10;
   factorial NUMBER := 1;
BEGIN
   FOR i IN 1..num LOOP
      factorial := factorial * i;
   END LOOP;

   DBMS_OUTPUT.PUT_LINE('Factorial of ' || num || ' is ' || factorial);
END;


DECLARE
   num NUMBER := 7;
   is_prime BOOLEAN := TRUE;
BEGIN
   IF num <= 1 THEN
      is_prime := FALSE;
   ELSE
      FOR i IN 2..num/2 LOOP
         IF num mod i = 0 THEN
            is_prime := FALSE;
            EXIT; -- exit loop if factor found
         END IF;
      END LOOP;
   END IF;

   IF is_prime THEN
      DBMS_OUTPUT.PUT_LINE(num || ' is a prime number');
   ELSE
      DBMS_OUTPUT.PUT_LINE(num || ' is not a prime number');
   END IF;
END;


BEGIN
  UPDATE departments
  SET department_name = 'HRD'
  WHERE department_id = 71
  AND department_name != 'HRD';
  
  IF SQL%ROWCOUNT > 0 THEN
    dbms_output.put_line('Department 71 name has been modified.');
  ELSE
    dbms_output.put_line('Department 71 name is already HRD.');
  END IF;
END;
/
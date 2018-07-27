create or replace function avg_sal
return integer
is
	sal integer;
begin
	select avg(salary) into sal from employee;
	return sal;
end;

set serveroutput on;
begin
	dbms_output.put_line('average salary - ' || avg_sal);
end;
/
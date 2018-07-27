create or replace procedure setCategory
is
    type namearray is varray(50) of employees.ID%type;
    ID_array namearray := namearray();
    cnt number(2);
    counter number(2);
    dur number(6,2);
begin
    select count(*) into cnt from employees;
    for counter in 1..cnt
        loop 
            ID_array.extend;
            select ID into ID_array(counter) from employees where serial_no=counter;
            
        end loop;
    for counter in 1..cnt
        loop 
            select (sysdate-entry_date)/365 into dur from employees where ID=ID_array(counter);
            if(dur>10)then 
                update employees set Category='A' where ID=ID_array(counter);
            elsif(dur>5) then
                update employees set Category='B' where ID=ID_array(counter);
            else 
                update employees set Category='C' where ID=ID_array(counter);
            end if;
        end loop;
            

end;


-- Procedure For set Wage.

create or replace procedure setWage
as
    type WArray is varray(50) of wages.employee_ID%type;
    wageArray WArray := WArray();
    --cursor C is select Employee_id  from wages;
    cnt number(2);
    counter number(2);
    cat varchar(10);
begin
    select count(*) into cnt from wages;
    for counter in 1..cnt
        loop 
            wageArray.extend;
            select employee_ID into wageArray(counter) from wages where serial_no=counter;
        end loop;
    for counter in 1..cnt
        loop 
            select category into cat from employees where ID=wageArray(counter);
            if(cat='A')then 
                update wages set wage=1000 where employee_ID=wageArray(counter);
            elsif(cat='B') then
                update wages set wage=750 where employee_ID=wageArray(counter);
            else 
                update wages set wage=600 where employee_ID=wageArray(counter);
            end if;
        end loop;

end;


--FunctionFor set income.


create or replace function setIncome
(ppl_in in number,r_in in number)
return number
is
    income number;
begin
    income := ppl_in*r_in;
    return income;
end;


--Function For set gross profit.


create or replace function setGrossProfit
(inc number , id number)
return number
is
    wage_given number;
    profit number;
begin
    select sum(wage) into wage_given from wages where services_id=id; 
    update income set wages_given=wage_given where serial_no=id;
    profit := inc-wage_given;
    return profit;
end;


--Function For set Bonus.

create or replace procedure setBonus
as
    --type WArray is varray(50) of wages.employee_ID%type;
    --wageArray WArray := WArray();
    cursor C is select Employee_id,sum(wage) as wg  from wages group by Employee_id;
    cnt number(7,2);
    counter number(2);
    cat varchar(10);
begin
    
    for EidBonus in c 
    loop
        cnt:=EidBonus.wg;
        cnt:=cnt/2;
        dbms_output.put_line('Employee ID : '||EidBonus.employee_ID||' With the Eid bonus : '||cnt);

    end loop;



end;



--Annonymas Block(Main Function).


set serveroutput on;
declare 
    counter number (2);
    cnt number(2);
    ppl services.people%type;
    r services.rate%type;
    get number;
    recieve number;
    
begin
    setCategory;
    setWage;
    setBonus;
    select count(*) into cnt from services ;
    for counter in 1..cnt
        loop
            select people ,rate into ppl,r from services where serial_no=counter;
            get:=setIncome(ppl,r);
            update income set Income =get where serial_no=counter;
            recieve:= setGrossProfit(get,counter);
            update income set Gross_profit =recieve where serial_no =counter;
        end loop;
end;
/

set serveroutput on
declare
    -- 1. Define the cursor
    cursor s1 is select basicsal from emp where deptno=30;
    -- 2. Use the variable name consistently
    v_sal emp.basicsal%type; 
begin
    open s1;
    if s1%isopen then
        loop
            fetch s1 into v_sal;
            exit when s1%notfound;
            
            -- Use the variable v_sal for the calculation
            update emp set basicsal = basicsal + (v_sal * 0.05) where deptno=30;
            
            -- Move this inside the loop to see each update
            dbms_output.put_line('Updated salary to: ' || v_sal);
        end loop;
    end if;
    close s1;
    commit; -- Don't forget to commit your changes!
end;
/
/* 1. Write a stored procedure by the name of PROC1 that accepts two varchar strings as parameters. Your procedure should then determine if the first varchar string 
exists inside the varchar string. For example, if string1 = ‘DAC’ and string2 =  ‘CDAC, then string1 exists inside string2. The stored procedure should insert the appropriate message into a suitable TEMPP output table. Calling program for the  stored procedure need not be written. */

create table TEMPP (
i int,
str1 varchar(20),
str2 varchar(20),
sol varchar(100) );

delimiter //
create procedure PROC1(str1 varchar(20), str2 varchar(20))
begin
	declare a int default 0;
    set a = instr(str2, str1);
    if (a = 0) then
		insert into TEMPP (i, str1, str2, sol) values (0, str2, str1, 'String2 is not part of String 1');
	else
		insert into TEMPP (i, str1, str2, sol) values (1, str2, str1, 'String2 is part of String 1');
	end if;
end; //
delimiter ;

select * from tempp;
call PROC1('DAC', 'CDAC');
call PROC1('Anuj', 'Gaonkar');
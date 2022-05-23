/* 2. Create a stored function by the name of FUNC1 to take three parameters, the sides of a triangle. The function should return a Boolean value:- TRUE if the 
triangle is valid, FALSE otherwise. A triangle is valid if the length of each side is less than the sum of the lengths of the other two sides. Check if the dimensions 
entered can form a valid triangle. Calling program for the stored function need not be written */

delimiter //
create function FUNC1(a float, b float, c float)
returns boolean
deterministic
begin
	if (a + b > c) and (a + c > b) and (b + c > a) then
		return true;
	else
		return false;
	end if;
end; //
delimiter ;

select FUNC1(10 ,20 ,30);
select FUNC1(60 ,70 ,50);
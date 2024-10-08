/*******************************************************************************
***************************  TRY_CAST and TRY_CONVERT   *************************
********************************************************************************/
-- TRY CAST will return a NULL if the conversion fails.

---- TRY CAST : does it works ?

select try_cast ('ABD' as int) as result

---- CAST ????

select cast ('ABD' as int) as result

-- TRY_CONVERT 

select try_convert (int,'ABD',103) as result

----- CONVERT  ????

select convert (INT,'ABC') as  result

---- TRY CAST with the CASE WHEN

select case when try_cast ('ABC' as INT)  is null ---- if it's null it fails
	then 'KO'
	else 'OK'
	end

-- TRY_CONVERT 

select case when try_convert (INT,'ABC')  is null ---- if it's null it fails
	then 'KO'
	else 'OK'
	end


---- TRY CAST with a good conversion in a INT

select case when try_cast ('1' as INT)  is null ---- if it's null it fails
	then 'KO'
	else 'OK'
	end

---- TRY CAST with a IFF 

select IIF(try_cast ('1' as INT)  is null,'conversion KO','conversion OK') as result


---- try_convert with a IFF 

select IIF(try_convert (INT,'1')  is null,'conversion KO','conversion OK') as result
GO


BEGIN
/* Initializing Variables */
	DECLARE @First_Name VARCHAR(50);
	DECLARE @Last_Name VARCHAR(50);
	DECLARE @gender VARCHAR(50);
	DECLARE @age INT;
	DECLARE @email VARCHAR(50);

/* Setting values each variables */

		SET @First_Name = 'Daryll';
		SET @Last_Name = 'Culas';
		SET @gender = 'Male';
		SET @age = 23;
		SET @email = 'culasdaryll99@gmail.com';
	
/* Invocation of variables to display outputs*/

			PRINT 'First Name: '+ @First_Name;
			PRINT 'Last Name: ' + @Last_Name;
			PRINT 'Gender: ' + @gender;
			PRINT 'AGE: ' + CAST(@age AS VARCHAR(50));
			PRINT 'EMAIL ADDRESS: ' + @email;
END
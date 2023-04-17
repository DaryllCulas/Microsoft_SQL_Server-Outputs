BEGIN
	
	/* Initializing Variables */
	DECLARE @grade INT;
	DECLARE @result VARCHAR(50);
	DECLARE @verdict VARCHAR(50);
		SET @grade = 78;

	IF @grade >= 75 AND @grade <= 100 /* True AND true returns true*/
		/* Execute Here*/
		BEGIN 
		/* Overriding values in respective variables*/
			SET @result = 'Excellent'; 
			SET @verdict = 'passed';
		END
	ELSE IF @grade <= 90 AND @grade <= 74
		BEGIN 
			SET @result = 'Poor';
			SET @verdict = 'FAILED';
		END
	ELSE 
		BEGIN 
			SET @result = 'No such grade';
		END

	PRINT 'Result: ' + @result;
	PRINT 'Verdict: ' + @verdict;
	PRINT 'My Grade: ' + CAST(@grade AS VARCHAR(50));
END



BEGIN 
	DECLARE @OrderCapacity INT;
	DECLARE @OrderCount int;
		SET @OrderCapacity = 20;
		SET @OrderCount = 0;

	WHILE(@OrderCapacity != 0)
		BEGIN
			SET @OrderCapacity = @OrderCapacity - 1;
			SET @OrderCount = @OrderCount + 1;
				PRINT 'Order Count: '+CAST(@OrderCount AS VARCHAR(50));
				PRINT 'Order Capacity: ' + CAST(@OrderCapacity AS VARCHAR(50));
		END
		PRINT 'Total Order: '+ CAST(@OrderCount AS VARCHAR(50));
END


CREATE DATABASE BankAccount;

CREATE TABLE BankAccount1(
    AccountNumber INT PRIMARY KEY NOT NULL,
    AccountName VARCHAR(55) NOT NULL,
    Balance INT NOT NULL
);

SELECT * FROM BankAccount;

INSERT INTO BankAccount(
    AccountNumber, AccountName,
    Balance

)
VALUES(
    10, 'Aldous',
    10000
);
SELECT * FROM BankAccount;

INSERT INTO BankAccount(
    AccountNumber, AccountName,
    Balance

)
VALUES(
    20, 'Brendon',
    11000
);
SELECT * FROM BankAccount;


BEGIN
    BEGIN TRANSACTION
        UPDATE BankAccount SET Balance = Balance - 1000
        WHERE AccountNumber = 10;
       UPDATE BankAccount SET Balance = Balance + 1000
         WHERE AccountNumber = 20;

            SAVE TRANSACTION fundTransfer
                  UPDATE BankAccount SET Balance = Balance - 11000
                        WHERE AccountNumber = 10;

            DECLARE @Balance INT
                SET @Balance = (SELECT BALANCE FROM BankAccount 
                WHERE AccountNumber =10);

     IF @Balance >= 0
        BEGIN
            SAVE TRANSACTION WithDraw
        END
    ELSE IF @Balance < 0
        BEGIN
            ROLLBACK TRANSACTION fundTransfer
        END
    
                    
    COMMIT



END
/**/
---
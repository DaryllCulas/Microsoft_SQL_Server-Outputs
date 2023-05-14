/*
    Fund transfer A transaction to transfer P1000 from the bank account of aldous 
    to the account of Brendon:

    1. read Aldous's account 
    2. Aldous's account = Aldous's account - P1000
    3. Write changes in Aldous's account 
    4. Read Brendon's account 
    5. Brendon's account = Brendon's account + P1000
    6. Write changes in Brendon's account 
*/


CREATE TABLE bankAccounts(
    AccountNo INT PRIMARY KEY NOT NULL,
    AccountName VARCHAR(255) NOT NULL,
    Balance INT NOT NULL  
);

/* Create here bankAccounts Table*/
SELECT * FROM bankAccounts;


/* Inserting values in bankAccounts Table */
INSERT INTO bankAccounts(
    AccountNo,
    AccountName,
    Balance
)VALUES(
    202301,
    'Aldous',
    10000
);

INSERT INTO bankAccounts(
    AccountNo,
    AccountName,
    Balance
)VALUES(
    202302,
    'Brendon',
    10000
);


/* Display status of bankAccounts Table */
SELECT * FROM bankAccounts;

/* DO the process of transactional */

BEGIN
    BEGIN TRANSACTION

/* Deduct the amount needed for fund transfer prcess */

        UPDATE bankAccounts 
        SET Balance = Balance - 1000
        WHERE AccountNo = 202301; 



    COMMIT
END
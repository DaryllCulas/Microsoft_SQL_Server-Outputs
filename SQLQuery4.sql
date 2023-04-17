/* ALTER ADD COLUMN */

/*
ALTER TABLE table_name
ADD column_name data_type column_constraint;


In this statement:

First, specify the name of the table in which you want to add the new column.
Second, specify the name of the column, its data type, and constraint if applicable.
If you want to add multiple columns to a table at once using a single ALTER TABLE statement, you use the following syntax:

ALTER TABLE table_name
ADD 
    column_name_1 data_type_1 column_constraint_1,
    column_name_2 data_type_2 column_constraint_2,
    ...,
    column_name_n data_type_n column_constraint_n;

*/


/* The following statement creates a new table named sales.quotations: */

CREATE TABLE sales (
    quotation_no INT IDENTITY PRIMARY KEY,
    valid_from DATE NOT NULL,
    valid_to DATE NOT NULL
);


/* To add a new column named description to the sales.quotations table, you use the following statement: */
ALTER TABLE sales
ADD description VARCHAR (255) NOT NULL;

/* The following statement adds two new columns named amount and customer_name to the sales.quotations table: */

ALTER TABLE sales.quotations 
    ADD 
        amount DECIMAL (10, 2) NOT NULL,
        customer_name VARCHAR (50) NOT NULL;

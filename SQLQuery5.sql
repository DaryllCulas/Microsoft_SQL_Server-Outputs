/* ALTER DROP COLUMN */

/*
ALTER TABLE table_name
DROP COLUMN column_name;

In this syntax:

First, specify the name of the table from which you want to delete the column.
Second, specify the name of the column that you want to delete.
If the column that you want to delete has a CHECK constraint, you must delete the constraint first before removing the column. Also, SQL Server does not allow you to delete a column that has a PRIMARY KEY or a FOREIGN KEY constraint.

If you want to delete multiple columns at once, you use the following syntax:

ALTER TABLE table_name
DROP COLUMN column_name_1, column_name_2,...;

*/

/* Let’s create a new table named sales.price_lists for the demonstration. */
CREATE TABLE sales(
    product_id int,
    valid_from DATE,
    price DEC(10,2) NOT NULL CONSTRAINT ck_positive_price CHECK(price >= 0),
    discount DEC(10,2) NOT NULL,
    surcharge DEC(10,2) NOT NULL,
    note VARCHAR(255),
    PRIMARY KEY(product_id, valid_from)
); 

/* The following statement drops the note column from the price_lists table: */
ALTER TABLE sales
DROP COLUMN note;
/* 
The price column has a CHECK constraint, therefore, you cannot delete it. If you try to execute the following statement, you will get an error: 


The object 'ck_positive_price' is dependent on column 'price'.

*/

/* To drop the price column, first, delete its CHECK constraint: */
ALTER TABLE sales
DROP CONSTRAINT ck_positive_price;

/* And then, delete the price column: */

ALTER TABLE sales
DROP COLUMN price;

/* The following example deletes two columns discount and surcharge at once: */

ALTER TABLE sales.price_lists
DROP COLUMN discount, surcharge;









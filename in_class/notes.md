AMAZON MOCK UP

CUSTOMER
    -address
    -phone number
    -first name
    -last name
    -customer_id
    -billing info
PRODUCTS
    -item_id
    -amount
    -seller_id
    -product name
    -upc
INVENTORY
    -upc
    -product_amount
CART
    -cart_id
    -customer_id
    -order_id
ORDER
    -order_id
    -upc
    -order_date
    -sub_total
    -total_cost
BRAND
    -seller_id
    -contact_number
    -address
    -brand_name


Common SQL Data Types
VARCHAR(n): Variable-length string, up to n characters.

INTEGER: Integer numbers, both positive and negative.

SERIAL: Auto-incrementing integers, commonly used for primary keys.

DATE: Stores date values.

NUMERIC(p, s): Stores numbers with up to p digits, s of which can be after the decimal point.

BOOLEAN: True or false values.

TEXT: Stores long-form text data.

The NUMERIC(p, s) data type is particularly useful for storing exact numeric values. The p represents the total number of digits that can be stored, and s represents the number of digits that can appear after the decimal point.
For example, NUMERIC(8, 2) can hold a maximum of eight digits, with two digits allowed after the decimal point. This means the largest value you could store would be 999999.99, and the smallest would be -999999.99.



Primary Key
Definition: A Primary Key is a column or set of columns in a database table that uniquely identifies each row in that table. The primary key must contain unique values, and it cannot contain any NULL values.
Characteristics:
Unique: Every value must be distinct; no duplicates allowed.
Non-Nullable: Cannot be NULL.
Immutable: Ideally, the value should not change over time.
Optimal: Should be as simple as possible to maintain efficiency.
Example: In a Users table, a column named UserID could serve as the Primary Key, where each UserID is unique to an individual user.

Foreign Key
Definition: A Foreign Key is a column or set of columns in a database table that serves as a link to the Primary Key in another table. The table containing the foreign key is called the child table, and the table that is referenced by the foreign key is called the parent table.
Characteristics:
Referential Integrity: The values in the Foreign Key column(s) must match values in the parent table’s Primary Key or be NULL.
Cascade: Actions like update or delete on the parent table can be set to propagate to the child table.
Non-Unique: Multiple rows in the child table can refer to the same row in the parent table.
Example: In an Orders table, a column named CustomerID could serve as a Foreign Key linking to the UserID in the Users table, indicating who placed each order.


Relationships

One-to-One: Each record Table related to one reocrd in Table B. These rare.
One-to-Many: One reocrd in Table A can relate to multiple reocrds in Table B.
Many-to-Many: Require a third table, called a junction, to 

CREATE TABLE table_name (
    column1 datatype1,
    column2 datatype2,
    column3 datatype3,
    ...
    PRIMARY KEY (column),
    FOREIGN KEY (column) REFERENCES another_table(column),
  
);


Choosing between NUMERIC and INTEGER depends on your needs:

If you need to store whole numbers and are concerned about performance or storage, INTEGER is usually the better choice.
If you need to store numbers that have fractional parts or require exact precision, NUMERIC would be more appropriate.
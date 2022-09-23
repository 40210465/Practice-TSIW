# SQL SYNTAX
=========================================================================================================

  ##     STRUCTURED QUERY LANGUAGE = SQL        

**MANIPULATION**
`Relational Databases`

A `relational database` is a `database` that organizes information into one or more tables. Here, the relational database contains one table.

***********************************************************************************************************

<h3>     TABLE     </h3>

A `table` is a collection of data organized into `rows` and `columns`. Tables are sometimes referred to as relations.

A ``column`` is a set of data values of a particular type. Here, ``id``, ``name``, and ``age`` are the ``columns`` for instance.

One ``row`` of the ``table`` represents one ``record``.

***********************************************************************************************************

All data stored in a relational database is of a certain data type. Some of the most common data types are:

1. `INTEGER`,                 <!--a positive or negative whole number--> 
        
2. `TEXT`,    <!--a text string [!! WE ALSO CAN USE `VARCHAR(chars_unit)` to represent string data]-->                                  

3. `DATE`,           <!--the date formatted as ``YYYY-MM-DD``-->               

4. `REAL`            <!--a decimal value-->               

***********************************************************************************************************
************************************************************************************************************

# SQL STATEMENTS

=========================================================================================================

A ``SQL STATMENT``  is text that the database recognizes as a valid command. Statements`` always end`` in a 
``semicolon ;``.

**EXAMPLE OF SQL STATEMENT**:

************************************************************************************************************
*   ``CREATE TABLE`` table_name(

    column_1 data_type,

    column_2 data_type,

    column_3 data_type

)``;``
************************************************************************************************************

Let’s break down the components of a statement:

1. `CREATE TABLE` is a ``clause``. Clauses perform specific tasks in SQL. By convention, clauses are `` written `` in ``capital letters``. Clauses can also be referred to as ``commands``.

2. `table_name` refers to the ``name of the table`` that the command is applied to.

3. (``column_1 data_type``, ``column_2 data_type``, ``column_3 data_type``) is a ``parameter``. A parameter is a list of columns, data types, or values that are passed to a clause as an argument. Here, the parameter is a list of column names and the associated data type.


* The structure of ``SQL`` statements vary.

* The number of lines used does not matter. 

* A statement can be written all on one line, or split up across multiple lines if it makes it easier to read. 

<strong>Statement writen in the same line</strong> : 

************************************************************************************************************
* ``CREATE TABLE``table_name(column_1 data_type, column_2 data_type, column_3 data_type);
************************************************************************************************************

<strong> Statement writen in multiple lines </strong> :

************************************************************************************************************
* ``CREATE TABLE`` table_name(

         column_1 data_type,

        column_2 data_type,

        column_3 data_type
 );
***********************************************************************************************************

<strong> TIPS </strong> 

- The `Clauses` of the previous statment [EXAMPLE OF SQL STATEMENT] are `SELECT` and `FROM`

- We are applying the ``commands`` to the table with the name `celebs`

************************************************************************************************************
************************************************************************************************************

# SQL STATEMENTS

************************************************************************************************************

## ``CREATE STATEMENT``

`CREATE` statements allow us to ``create a new table`` in the ``database``.  
 You can use the ``CREATE`` statement anytime you want to create a new table from scratch. The statement below creates a new table named ``celebs``.

************************************************************************************************************
 ``CREATE TABLE`` celebs (

   id ``INTEGER``,     <!-- id is the first column -->   

   name ``TEXT``,       <!-- name is the first column -->

   age ``INTEGER``      <!-- age is the first column -->

);
************************************************************************************************************
<strong>NOTICE THAT</strong>:

1. ``CREATE TABLE`` is a ``clause`` that tells ``SQL`` you want to ``create a new table``.

2. ``celebs`` is the ``name of the table``.

3. ``(id INTEGER, name TEXT, age INTEGER)`` is a list of ``parameters`` defining each ``column``, or attribute in the table and its data type

************************************************************************************************************
************************************************************************************************************

# INSERT STATEMENT
## ``INSERT INTO STATEMENT``

************************************************************************************************************
 * ``INSERT INTO`` celebs (id, name, age) 
 ``VALUES``(1, 'Justin Bieber', 22);
 ************************************************************************************************************

The ``INSERT`` statement ``inserts`` a ``new row`` into a ``table``.

We can use the ``INSERT`` statement when you want to ``add new records``. The statement below enters a record for Justin Bieber into the celebs table.

<strong>!! record it´s a row in the table</strong> 

* ``INSERT INTO`` is a ``clause`` that adds the specified row or rows.

* ``celebs`` is the table the row is added to.

* ``(id, name, age)`` is a ``parameter ``identifying the ``columns`` that ``data`` will be ``inserted into``.

* ``VALUES`` is a ``clause`` that indicates the data being inserted.

* ``(1, 'Justin Bieber', 22)`` is a ``parameter`` identifying the values being inserted :

 ``1`` : an ``integer`` that will be added to ``id`` column
 ``'Justin Bieber'``: an ``text`` or ``string data type`` that will be added to ``name`` column
 ``22``: an ``integer`` that will be added to ``age`` column

************************************************************************************************************
************************************************************************************************************

## ``SELECT STATEMENT``

``SELECT``statements are used to fetch data from a database. In the statement below, ``SELECT returns`` all data in the ``name column`` of the celebs table.

************************************************************************************************************
 * ``SELECT`` name ``FROM``celebs;         <!-- WILL ONLY RETURN THE name column as query result-->  
************************************************************************************************************

1. ``SELECT`` is a clause that indicates that the statement is a ``query``. You will use ``SELECT`` every time you ``query data`` from a ``database``.

2. ``name`` specifies the column to query data from.

3. ``FROM celebs`` specifies the name of the table to ``query data from``. In this statement, data is queried from the ``celebs table``.

<strong> YOU CAN QUERY DATA FROM ALL COLUMNS FROM A TABLE WITH THE FOLLOW STATMENT</strong>:

************************************************************************************************************
=> ``SELECT`` * ``FROM``celebs;
************************************************************************************************************

``*`` IS A ``SPECIAL`` WILDCARD ``character`` that ``selects every column from a table`` without specifyng each column for instance:

************************************************************************************************************
``SELECT`` id, name, age ``FROM`` celebs;
************************************************************************************************************

************************************************************************************************************
************************************************************************************************************

## ``ALTER STATEMENT``

The ``ALTER TABLE`` statement adds a new column to a table. You can use this command when you want to ``add columns to a table``. The statement below adds a new column **twitter_handle** to the **celebs** table.

************************************************************************************************************
 => ``ALTER TABLE`` celebs
``ADD COLUMN`` twitter_handle``TEXT``;      <!--TEXT IS THE DATA TYPE-->   
************************************************************************************************************

1. ``ALTER TABLE``is a ``clause`` that lets you make the specified changes.

2. ``celebs`` is the name of the table that is ``being changed``.

3. ``ADD COLUMN`` is a ``clause`` that lets you add a new column to a ``table``.

 * ``twitter_handle`` is the name of the new column being ``added``.
 * ``TEXT`` is the`` data type`` for the ``new column``

4. By default `NULL` will be the data type inserted in that column ``if there is no data inserted`` !!

************************************************************************************************************
************************************************************************************************************

## `UPDATE STATMENT`

* The ``UPDATE`` statement edits a row in a table. You can use the ``UPDATE`` statement when you want to change existing records/rows. The statement below updates the record with an ``id`` value of ``4`` to have the ``twitter_handle`` `` @taylorswift13``.

**EXAMPLE:**
************************************************************************************************************
=> `UPDATE` celebs 
`SET` twitter_handle = '@taylorswift13' 
`WHERE` id = ``4``;
************************************************************************************************************

1. ``UPDATE`` is a clause that edits a row in the table.

2. ``celebs`` is the name of the table.

3. ``SET`` is a clause that indicates the column to edit.

* ``twitter_handle`` is the name of the column that is going to be updated

* ``taylorswift13`` is the new value that is going to be inserted into the ``twitter_handle`` column.

* `WHERE` is a clause that indicates which row(s) to update with the new column value. Here the row with a ``4`` in the `id` column is the row that will have the ``twitter_handle`` updated to ``@taylorswift13``.

************************************************************************************************************
************************************************************************************************************

## `DELETE STATMENT`

The ``DELETE FROM`` statement deletes one or more rows from a table. You can use the statement when you want to delete existing records. The statement below deletes all records in the celebs table with null values or empty values on the ``twitter_handle`` column.

************************************************************************************************************
``DELETE FROM``celebs 
``WHERE``twitter_handle `IS NULL`;
************************************************************************************************************

1. ``DELETE FROM`` is a clause that lets you delete rows from a table.

2. ``celebs`` is the name of the table we want to delete rows from.

3. ``WHERE`` is a clause that lets you select which rows you want to delete. Here we want to delete all of the rows where the twitter_handle column values `IS NULL`.

4.  ``IS NULL`` is a condition in SQL that returns true when the value is NULL and false otherwise.

************************************************************************************************************
************************************************************************************************************


************************************************************************************************************

# SQL CREATE Constraints

## `CONSTRAINTS`

SQL ``constraints`` are used to specify rules for data in a table.

``Constraints`` can be specified when the table is created with the ``CREATE TABLE`` statement, or after the table is created with the ``ALTER TABLE`` statement.

SINCE with the `CREATE TABLE` and with the `ALTER TABLE` statement we can add columns to with with some
``constrains or rules``

----------------------------------------------------------------------------------------------------------

**SYNTAX**

************************************************************************************************************
``CREATE TABLE`` table_name (

    column1 datatype constraint,

    column2 datatype constraint,
    
    column3 datatype constraint,
    ...
    
);
************************************************************************************************************

SQL constraints are used to specify rules for the data in a table.

Constraints are used to limit the type of data that can go into a table. This ensures the accuracy and reliability of the data in the table. If there is any violation between the constraint and the data action, the action is aborted.

Constraints can be column level or table level. Column level constraints apply to a column, and table level constraints apply to the whole table.


## ``SQL CONSTRAINTS COMMANDS``

* `NOT NULL` - Ensures that a column cannot have a NULL value
* `UNIQUE` - Ensures that all values in a column are different
* `PRIMARY KEY` - A combination of a NOT NULL and UNIQUE. Uniquely identifies each row in a table
* `FOREIGN KEY` - Prevents actions that would destroy links between tables
* `CHECK` - Ensures that the values in a column satisfies a specific condition
* `DEFAULT` - Sets a default value for a column if no value is specified
* `CREATE INDEX` - Used to create and retrieve data from the database very quickly

************************************************************************************************************

## `NOT NULL`

The following SQL ensures that the ``ID``, ``LastName``, and ``FirstName`` columns will NOT accept ``NULL`` values when the ``Persons`` table is created:

************************************************************************************************************
``CREATE TABLE`` Persons (

    ID int  NOT NULL,

    LastName varchar(255) NOT NULL,

    FirstName varchar(255) NOT NULL,

    Age int
);
************************************************************************************************************

## `NOT NULL` with `ALTER TABLE`

LET´S SUPPOSE WE FORGOT TO ADD A CONSTRAIN `NOT NULL` TO THE `AGE` COLUMN FOR THE `Persons` TABLE

To create a ``NOT NULL``constraint on the ``Age`` column when the ``Persons`` table is already created, use the following SQL:

************************************************************************************************************
``ALTER TABLE`` Persons
``MODIFY`` Age int ``NOT NULL``; <!-- we also could modify is data type  MODIFY Age TEXT NOT NULL-->  
************************************************************************************************************
************************************************************************************************************

## `UNIQUE`

The ``UNIQUE`` constraint ensures that all values in a column are different.

Both the ``UNIQUE`` and ``PRIMARY KEY`` constraints provide a guarantee for uniqueness for a column or set of columns.

A ``PRIMARY KEY`` constraint automatically has a ``UNIQUE``constraint.

However, you can have many ``UNIQUE`` constraints per table, but only one PRIMARY KEY constraint per table.

**UNIQUE VS PRIMARY KEY

* UNIQUE => ONLY CONSTRAINS THE COLUMNS FOR EACH TABLE => NEEDS CONSTRAINS FOR EACH COLUMNS OF ONE TABLE

* PRIMARY KEY => CONSTRAIN AUTOMATICALLY THW WHOLE TABLE WITH ONLY ONE CONSSTRAIN => NEEDS ONLY ONE CONSTRAIN TO CONSTRAIN THE WHOLE TABLE


The following SQL creates a ``UNIQUE`` constraint on the ``ID``column when the Persons table is created:

************************************************************************************************************
``CREATE TABLE`` Persons (

    ID int NOT NULL,
    LastName varchar(255) NOT NULL,

    FirstName varchar(255),
    
    Age int,
    
   <strong> UNIQUE </strong> (ID)
);

************************************************************************************************************

IN PREVIOUS EXAMPLE, WE ARE CONSTRAINING THE ID COLUMN WAS UNIQUE, SO WE CANT ALLOW DUPLICATES OR THE SAME VALUES FOR
EACH RECORD IN THE ID COLUMN

************************************************************************************************************

## `UNIQUE` with `ALTER TABLE`


To create a ``UNIQUE`` constraint on the ``ID`` column when the table is already created, use the following SQL:


************************************************************************************************************
``ALTER TABLE`` Persons
``ADD UNIQUE`` (ID);     
************************************************************************************************************

* IN PREVIOUS EXAMPLE, WAS ADDED TO THE ID COLUMN A CONSTRAIN UNIQUE, TO DISTINCT THERE VALUES, AND THAT MEANS THAT CANNOT HAVE DUPLICATE VALUES OR THE SAME VALUES

* WE CAN ALSO NAME A UNIQUE CONSTRAINT AND DEFINE A UNIQUE CONSTRAINT :

************************************************************************************************************
``ALTER TABLE`` Persons
``ADD CONSTRAINT`` UC_Person ``UNIQUE`` (ID,LastName);
************************************************************************************************************

* IN THE PREVIOUS EXAMPLE WE CAN SEE THAT ``UC_Person`` is the ``name`` that we gave to the constrain and ``UNIQUE`` 
was the CONSTRAIN inserted into two columns ``ID`` and ``LastName`` as ``parameters`` for the UNIQUE constrain

**TIP**

* WE CAN GIVE NAMES TO CONSTRAINS TO EASY IDENTITY THEM FOR FUTURE QUERY´S FOR INSTANCE, LET´S SUPPOSE THAT WE WANT TO REMOVE A 
CONSTRAIN FROM A COLUMN : 
************************************************************************************************************
``ALTER TABLE`` Persons
``DROP CONSTRAINT`` UC_Person;
************************************************************************************************************

* NOTICE THAT WE JUST CALLBACK THE NAME OF THE CONSTRAIN PREVIOUS CREATED ``UC_Person`` TO ``DROP`` FROM THE COLUMNS ``ID`` AND ``LASTNAME`` FROM THE TABLE persons with ``ALTER TABLE`` STATEMENT

************************************************************************************************************

* IF WE TRY TO INSERT DUPLICATE VALUES WILL DISPLAY AN ERROR ``'Duplicate entry'``for a specific key is duplicate :

************************************************************************************************************
``INSERT INTO`` Persons(ID,LastName)
``VALUES``(1,'a'),(1,'a');
************************************************************************************************************

* IN THIS EXAMPLE NOTICE THAT WE ARE INSERTING DUPLICATE ENTRIES FOR BOUTH KEYS FOR ``Persons.ID`` and FOR ``Persons.LastName`` SO LIKE I 
MENTION BEFORE WILL NOT BE POSSIBLE TO ADD THOSE VALUES FOR THE KEYS SINCE WE INSERTED CONSTRAIN UNIQUE VALUES FOR BOUTH COLUMNS|KEYS !!
************************************************************************************************************
************************************************************************************************************
## `PRIMARY KEY`

The ``PRIMARY KEY``constraint uniquely identifies each record in a table.

Primary keys must contain UNIQUE values, and cannot contain NULL values.

A table can have only ONE primary key; and in the table, this primary key can consist of single or multiple columns (fields).

* A TABLE CAN ONLY HAVE ONE PRIMARY KEY AND CAN BE ASSIGNED TO MULTIPLE KEYS OR COLUMNS, FOR INSTANCE :
* To allow naming of a PRIMARY KEY constraint, and for defining a PRIMARY KEY constraint on multiple columns, use the following SQL syntax:
************************************************************************************************************
``CREATE TABLE`` Persons (

    ID int NOT NULL,

    LastName varchar(255) NOT NULL,

    FirstName varchar(255),
    Age int,

    CONSTRAINT PK_Person PRIMARY KEY (ID,LastName)
);
************************************************************************************************************

* IN THE PREVIOUS EXAMPLE WE CAN SEE THAT ``PK_Person`` is the ``name`` that we gave to the constrain and ``PRIMARY KEY`` 
was the CONSTRAIN inserted into two columns ``ID`` and ``LastName`` as ``parameters`` for the PRIMARY KEY constrain

* NOTICE THAT THE TABLE Persons only have one PRIMARY KEY BUT THE CONSTRAINT IS ASSIGNED TO MULTIPLE KEYS OR COLUMNS.

* LET´S SUPPOSE I WANT TO DELETE THE CONSTRAIN ADDED BEFORE :

************************************************************************************************************
``ALTER TABLE`` Persons
``DROP PRIMARY KEY``;

        OR

* BY HIS CONSTRAIN NAME :

``ALTER TABLE`` Persons
``DROP CONSTRAINT`` PK_Person;
************************************************************************************************************
************************************************************************************************************

## `PRIMARY KEY VS UNIQUE`

* Both the ``UNIQUE`` and ``PRIMARY KEY`` constraints provide a guarantee for uniqueness for a column or set of columns.

* They both ensure that cannot be allowed to the Keys from the table duplicates.

* ``A PRIMARY KEY`` constraint automatically has a ``UNIQUE`` constraint.

* However, you can have many ``UNIQUE`` constraints per table, but only one ``PRIMARY KEY`` constraint per table.

************************************************************************************************************
************************************************************************************************************

## `FOREIGN KEY`

The ``FOREIGN KEY`` constraint is used to prevent actions that would destroy links between tables.

A ``FOREIGN KEY`` is a field (or collection of fields) in one table, that refers to the PRIMARY KEY in another table.

* The table with the ``FOREIGN KEY`` is called the ``child table``, and the table with the ``PRIMARY KEY`` is called the referenced or``parent table``.

LOOK AT THE FOLLOWING EXAMPLES WITH TWO TABLES :

************************************************************************************************************
* Persons Table => PARENT TABLE WITH ``PRIMARY KEY``

<table>
    <tr> 
        <th>PersonID</th> 
        <th>LastName</th>
        <th>FirstName</th>
        <th>Age</th>
    </tr>
     <tr> 
        <td>1</td> 
        <td>Hansen</td>
        <td>Ola</td>
        <td>30</td>
    </tr>
     <tr> 
        <td>2</td> 
        <td>Svendson</td>
        <td>Tove</td>
        <td>23</td>
    </tr>
     <tr> 
        <td>3</td> 
        <td>Pettersen</td>
        <td>Kari</td>
        <td>20</td>
    </tr>
</table>


* Orders Table => CHILD TABLE WITH ``FOREIGN KEY``

<table>
    <tr> 
        <th>OrdersID</th> 
        <th>OrderNumber</th>
        <th>PersonID</th>
    </tr>
     <tr> 
        <td>1</td> 
        <td>77895</td>
        <td>3</td>
    </tr>
     <tr> 
        <td>2</td> 
        <td>44678</td>
        <td>3</td>
    </tr>
     <tr> 
        <td>3</td> 
        <td>22456</td>
        <td>2</td>
    </tr>
     <tr> 
        <td>4</td> 
        <td>24562</td>
        <td>1</td>
    </tr>
</table>

************************************************************************************************************

* Notice that the ``PersonID`` column in the ``Orders`` table points to the ``PersonID`` column in the ``Persons`` table.

* The KEY ``PersonID`` or Persons.PersonID is the `PRIMARY KEY` in the `Persons Table`.

* The KEY ``PersonID`` or Persons.PersonID is the `FOREIGN KEY` in the `Orders Table`.

* The ``FOREIGN KEY`` constraint prevents invalid data from being inserted into the ``foreign key column``, because it has to be one of the values contained in the ``parent table``.

CHECK THE FOLLOWING STATMENTS :

************************************************************************************************************

``CREATE TABLE`` Persons(

PersonID INT NOT NULL,

LastName varchar(255) NOT NULL UNIQUE,

FirstName varchar(255) NOT NULL,

Age INT NOT NULL,

CONSTRAINT UQ_Persons PRIMARY KEY(PersonID)
);


``CREATE TABLE`` Orders (

    OrderID int NOT NULL,

    OrderNumber int NOT NULL,

    PersonID int,

    PRIMARY KEY (OrderID), 

    FOREIGN KEY (PersonID) REFERENCES Persons(PersonID)
);

************************************************************************************************************

* NOTICE THAT IN THE Persons TABLE INCLUDES A PRIMARY KEY, SO THE PERSONS TABLE IS THE PARENT TABLE,
SINCE THE Orders TABLE INCLUDES A FOREIGN KEY AND IT MAKES THE CHILD TABLE AND ALLOWS TO CONNECT WITH HIS PARENT BY REFERENCES IT . 

* WE CAN CREATE A FOREIGN KEY WIHTOUT PARAMETERS, EACH MEANS WE CAN ADD THE CONSTRAIN IN THE COLUMN :

************************************************************************************************************
``CREATE TABLE`` Orders (

    OrderID int NOT NULL PRIMARY KEY,

    OrderNumber int NOT NULL,

    PersonID int FOREIGN KEY REFERENCES Persons(PersonID)
);
************************************************************************************************************

* NOTICE THAT WE GAVE THE PersonID column/key AN CONSTRAIN OF ``FOREIGN KEY`` AND REFERENCES TO HIS ``PARENT TABLE``

`NOTE`: 

* WE CAN SPECIFY TO MULTIPLE COLUMNS :

    WITH THE FOLLOWING SYNTAX :
************************************************************************************************************ 
...
    ``CONSTRAINT`` FK_PersonOrder ``FOREIGN KEY`` (PersonID,FirstName)
...
************************************************************************************************************

* NOTICE THAT WE GAVE A NAME TO THE CONSTRAIN ``FK_PersonOrder``AND HIS CONSTRAIN``FOREIGN KEY`` WITH
``PARAMETERS`` FOR GIVE THE CONSTRAIN TO MULTIPLE COLUMNS WITH ``()``

* WE CAN ADD FOREIGN KEY TO EXISTING TABLE WITH THE FOLLOWING SYNTAX :

************************************************************************************************************
``ALTER TABLE`` Orders
``ADD FOREIGN KEY ``(PersonID) ``REFERENCES`` Persons(PersonID);

OR BY HIS CONSTRAIN NAME FK_PersonOrder :

``ALTER TABLE`` Orders
``ADD CONSTRAINT`` FK_PersonOrder
``FOREIGN KEY`` (PersonID) ``REFERENCES`` Persons(PersonID);
************************************************************************************************************

* IF WANT TO REMOVE A CONSTRAIN FOREIGN KEY :

************************************************************************************************************
``ALTER TABLE`` Orders
``DROP FOREIGN KEY`` FK_PersonOrder;

or

``ALTER TABLE`` Orders
``DROP CONSTRAINT`` FK_PersonOrder;

************************************************************************************************************

## ``CHECK`


The ``CHECK`` constraint is used to limit the value range that can be placed in a column.

If you define a ``CHECK`` constraint on a column it will allow only certain values for this column.

If you define a ``CHECK`` constraint on a table it can limit the values in certain columns based on values in other columns in the row.

* LET´S SEE A FOLLOWING EXAMPLE : 

************************************************************************************************************
``CREATE TABLE`` Persons (

    ID int NOT NULL,

    LastName varchar(255) NOT NULL,
    
    FirstName varchar(255),
    
    Age int  CHECK (Age>=18)
);
************************************************************************************************************

* THE AGE COLUMN WILL HAVE A RESTRICTION VALUE FOR AGE EACH MEANS ONLY VALUES UNDER 18 WILL BE ALLOWED !!

************************************************************************************************************
``CREATE TABLE`` Persons (

    ID int NOT NULL,

    LastName varchar(255) NOT NULL,

    FirstName varchar(255),

    Age int,

    City varchar(255),

    CONSTRAINT CHK_Person CHECK (Age>=18 AND City='Sandnes')
);
************************************************************************************************************

* NOW WE ARE GAVING A NAME TO THE CONSTRAIN CHECK ``CHK_Person`` AND CONSTRAINING MULTIPLE COLUMNS ``Age`` AND  ``City`` WITH THE CHECK CONSTRAIN :

1. ONLY ACCEPTS VALUES UNDER 18 FOR ``Age`` column;
2. ONLY ACCEPTS ``Sandnes`` FOR ``City`` column values;


* TO ADD A CHECK CONSTRAIN TO EXISTENT TABLE :

************************************************************************************************************
``ALTER TABLE`` Persons
``ADD CHECK`` (Age>=18);

or

* by addind to multiple columns and calling by his name constrain ``CHK_Person``:

``ALTER TABLE`` Persons
``ADD CONSTRAINT`` CHK_PersonAge ``CHECK`` (Age>=18 AND City='Sandnes');

************************************************************************************************************

* TO REMOVE A CONSTRAIN CHECK :

************************************************************************************************************
``ALTER TABLE`` Persons
``DROP CONSTRAINT`` CHK_PersonAge;

OR 

``ALTER TABLE`` Persons
``DROP CHECK`` CHK_PersonAge;
************************************************************************************************************

## `DEFAULT`

The ``DEFAULT`` constraint is used to set a default value for a column.

The default value will be added to all new records, if no other value is specified.

* LET´S SEE AN EXAMPLE WITH DEFAULT CONSTRAIN :

************************************************************************************************************
``CREATE TABLE ``Persons (

    ID int NOT NULL,
    
    LastName varchar(255) NOT NULL,
    
    FirstName varchar(255),
    
    Age int,
    
    City varchar(255) DEFAULT 'Sandnes'
);
************************************************************************************************************

* ALL VALUES FOR THE KEY City will be ``Sandnes`` BY DEFAULT, EACH MEANS THAT, IF THERE IS NOT VALUES
INSERTED, INSTEAD OF BEING NULL OR EMPTY, WE WILL HAVE ``Sandness` was is value.
LET´S SEE AN EXAMPLE OF THAT :

``INSERT INTO``persons(id,name,age)
``VALUES``(1,"Pedro",21),(2,"Ana",19);

`SELECT` * `FROM` persons;

AFTER THAT COMMANDS :

************************************************************************************************************
<table>
    <tr> 
        <th>id</th> 
        <th>name</th>
        <th>age</th>
        <th>City</th>
    </tr>
     <tr> 
        <td>1</td> 
        <td>Pedro</td>
        <td>21</td>
        <td>Sandness</td>
    </tr>
     <tr> 
        <td>2</td> 
        <td>Ana</td>
        <td>19</td>
        <td>Sandness</td>
    </tr>
</table>

************************************************************************************************************

* NOTICE THAT ALL VALUES FOR THE KEY CITY WILL BE Sandness

HOW TO ADD DEFAULT CONSTRAIN :

************************************************************************************************************

``ALTER TABLE`` Persons
``ALTER`` City ``SET DEFAULT`` 'Sandnes';

************************************************************************************************************

HOW TO REMOVE DEFAULT CONSTRAIN : 

************************************************************************************************************
``ALTER TABLE`` Persons
``ALTER`` City `DROP DEFAULT`;
************************************************************************************************************


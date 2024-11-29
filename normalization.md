## Normalization Principles in Database Design

### 1st Normal Form (1NF)
#### Objective:
* Ensure that the table structure is flat and does not contain repeating groups or arrays.

#### Rules:
1. Each row must be unique and identified by a primary key.
2. Sets, lists, or arrays of values are not permitted.
3. Mixing data types within the same column are not permitted.
4. Using row order to convery information is not permitted.

### 2nd Normal Form (2NF)
#### Objective:
* Ensure that all non-key attributes are fully functionally dependent on the primary key.

#### Prerequisite: The table must already be in 1NF.

#### Rules:
1. Identify the composite primary key if applicable.
2. Remove columns that are only dependent on part of the primary key.
3. Create separate tables for attributes related to each part of the key.

### 3rd Normal Form (3NF)
#### Objective:
* Ensure that all non-key attributes are only dependent on the primary key and not on other non-key attributes.

#### Prerequisite: The table must already be in 2NF.

#### Rules:
1. Remove attributes that depend on non-key attributes.
2. Create separate tables for these attributes and link them with foreign keys.



## Applying these principles to my Database tables:

* **User Table**: user_id (PK) | first_name | last_name | email (UNIQUE) | password_hash | phone_number | role | created_at
* **Property Table**: property_id (PK) | host_id (FK) | name | description | location | pricepernight | created_at | updated_at
* **Booking Table**: booking_id (PK) | property_id (FK) | user_id (FK) | start_date | end_date | total_price | status | created_at
* **Payment Table**: payment_id (PK) | booking_id (FK) | amount | payment_date | payment_method |
* **Review Table**: review_id (PK) | property_id (FK) | user_id (FK) | rating | comment | created_at |
* **Message Table**: message_id (PK) | sender_id (FK) | recipient_id (FK) | message_body | sent_at

### Step 1: Applying 1NF
* In all tables, no rows are used to organize data
* No mixed data types in the same column in all tables
* All tables have primary keys
* No arrays, sets, etc in any tables

* 1NF is satisfied

### Step 2: Applying 2NF (Ensure that all non-key attributes are fully functionally dependent on the primary key)
* No tables have composite primary keys, so this rule is already statisfied

* 2NF is satisfied

### Step 3: Applying 3NF (Remove transitive dependencies (non-key attributes depending on other non-key attributes))
* **User Table**: No transitive dependencies exist; all non-key attributes (e.g., email, role) depend directly on user_id.
* **Booking Table**: total_price is derived, so it is removed from the Booking table and should be calculated dynamically.
    * For example: 
* **Payment Table**: No transitive dependencies. Each attribute (amount, payment_date, payment_method) depends directly on payment_id.
* **Review Table**: No transitive dependencies. Attributes like rating and comment depend only on review_id.
* **Message Table**: No transitive dependencies. Each attribute (message_body, sent_at) depends directly on message_id.

* 3NF is satisfied for all tables, except the Booking table
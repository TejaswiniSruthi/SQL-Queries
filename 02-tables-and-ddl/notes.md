# ACID Properties + Tables (DDL)

## ACID Properties
A **transaction** = one logical unit of work that reads/modifies the database.
ACID = guarantees that transactions leave the DB in a valid state, even after errors.

| Property | Meaning | E-commerce example |
|---|---|---|
| **Atomicity** | All-or-nothing | Account is either fully created or not created at all — never half-created |
| **Consistency** | DB stays valid before/after | Stock count of 2 → order 1 → stock becomes exactly 1 |
| **Isolation** | Concurrent transactions don't interfere | Two users can create accounts/orders at the same time safely |
| **Durability** | Committed data survives crashes | Once an account is created, it's saved to disk even if the system fails right after |

## Use case for this module: QHotels
A hotel search site (like OYO). Core data: hotel name, location, rating, rooms, price.

## Creating a database
```sql
SHOW DATABASES;
CREATE DATABASE hotels;
```
MySQL ships with 4 default system DBs: `mysql`, `information_schema`,
`performance_schema`, `sys`.

## Creating a table
Need to decide column **data types** first: `INT`, `VARCHAR(n)`, `DATE`, etc.

```sql
CREATE TABLE hotel_details (
    hotel_id INT NOT NULL,
    hotel_name VARCHAR(128) NOT NULL,
    city VARCHAR(64) NOT NULL
);
```

```sql
SHOW TABLES;
DESCRIBE hotel_details;
```
`DESCRIBE` output columns:
- **Field** = column name
- **Type** = data type
- **Null** = whether NULLs allowed
- **Key** = whether indexed
- **Default** = default value
- **Extra** = special info (e.g. auto_increment)

## Altering a table (adding a column)
```sql
ALTER TABLE hotel_details
ADD star_rating INT;
```

### Curious Cat — default value on ALTER
```sql
ALTER TABLE hotel_details
ADD star_rating INT DEFAULT 0;

-- if column already exists without a default:
ALTER TABLE hotel_details
ALTER star_rating SET DEFAULT 0;
```

## Note on Crio workspace
Data only persists if it's inside `~/workspace` — sessions outside that get wiped.

## Flashcards
- **Q: Which ACID property ensures concurrent users don't corrupt each other's data?**
  A: Isolation.
- **Q: What command shows a table's column structure?**
  A: `DESCRIBE table_name;`

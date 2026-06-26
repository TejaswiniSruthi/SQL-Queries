# SQL Command Categories + CRUD (DML)

## Categories of SQL commands

| Category | Full form | Purpose | Examples |
|---|---|---|---|
| DDL | Data Definition Language | Define schema | `CREATE`, `ALTER`, `DROP` |
| DML | Data Manipulation Language | Manipulate data | `INSERT`, `UPDATE`, `DELETE` |
| DCL | Data Control Language | Control access | `GRANT`, `REVOKE` |
| TCL | Transaction Control Language | Manage transactions | `COMMIT`, `ROLLBACK`, `SAVEPOINT` |
| DQL | Data Query Language | Retrieve data | `SELECT` |

## CRUD ↔ HTTP mapping (handy for API testing too)

| CRUD | SQL | HTTP method |
|---|---|---|
| Create | `INSERT` | POST |
| Read | `SELECT` | GET |
| Update | `UPDATE` | PUT/PATCH |
| Delete | `DELETE` | DELETE |

## Importing sample data
```bash
cd ~/workspace/me_mysql
sudo mysql hotels < data.sql
```
Always confirm the right DB is selected:
```sql
SELECT DATABASE();
USE hotels;
```

See `queries.sql` in this folder for the actual SELECT/INSERT/UPDATE/DELETE
queries used in the activities.

## Curious Cats
- **Insert without `hotel_name` (a `NOT NULL` column)?**
  → MySQL throws an error: `Field 'hotel_name' doesn't have a default value`.
  The insert is rejected (atomicity — partial rows aren't allowed).
- **Forgot the `WHERE` clause in `DELETE`?**
  → It deletes **every row** in the table. Always double-check `WHERE` before
  running `DELETE`/`UPDATE` — ideally run the equivalent `SELECT` first to
  preview which rows would be affected.

## Flashcards
- **Q: What does DML stand for, and name 3 commands.**
  A: Data Manipulation Language — `INSERT`, `UPDATE`, `DELETE`.
- **Q: What's the safest habit before running a DELETE/UPDATE in prod?**
  A: Run the same `WHERE` condition as a `SELECT` first to confirm the target rows.

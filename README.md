# SQL Learnings — MySQL Module

Personal notes, queries, and practice scripts from the Crio MySQL module, organized by topic.
Built on top of a hotel-search use case (**QHotels**) plus a couple of bonus mini-databases (BookStore, Employee_db) used for practicing joins.

## Why this repo exists
Tracking SQL concepts as I learn them — useful for revision before interviews (SDET/QA roles often test SQL fundamentals + query writing) and as a reference for backend/API testing work.

## Structure

| Folder | Topic |
|---|---|
| `01-database-basics/` | What a database is, RDBMS options (Oracle, MySQL, MS SQL Server, PostgreSQL) |
| `02-tables-and-ddl/` | ACID properties, creating databases/tables, `ALTER`, `DESCRIBE` |
| `03-dml-crud/` | SQL command categories (DDL/DML/DCL/TCL/DQL), CRUD via `SELECT`/`INSERT`/`UPDATE`/`DELETE` |
| `04-joins/` | INNER / LEFT / RIGHT / FULL joins, with a BookStore practice DB |
| `05-filtering-sorting-aggregates/` | `ORDER BY`, `LIMIT`, aggregate functions (`COUNT`, `SUM`, `MIN`, `MAX`, `AVG`) |
| `data/` | Seed/setup scripts (`data.sql`, `joins_config.sh`, `employee_db_setup.sh`) used to recreate the practice databases |

Each topic folder has:
- `notes.md` — concise concept notes (plain English, no fluff)
- `queries.sql` — the actual SQL used in that topic's activities

## How to run this locally
```bash
# Start MySQL shell
sudo mysql

# Recreate the hotels DB + sample data
sudo mysql < data/data.sql

# Recreate the BookStore practice DB (for joins)
chmod +x data/joins_config.sh
./data/joins_config.sh
```

## Quick concept recap
- **DBMS** = software for storing/retrieving data with security controls.
- **MySQL** = open-source RDBMS, structured as databases → tables → rows/columns.
- **ACID** = Atomicity, Consistency, Isolation, Durability — guarantees for transactions.
- **CRUD** = Create, Read, Update, Delete — maps to `INSERT`, `SELECT`, `UPDATE`, `DELETE`.
- **Joins** = combine rows from 2+ tables based on a related column.

## Interview-prep questions (from the module)
- What is DBMS and its advantage over a file system?
- What is MySQL?
- How do you create new MySQL databases and tables?
- How do you `INSERT`, `UPDATE`, and `DELETE` data from a table?
- How do you write a `SELECT` query with multiple conditions?
- What are filtering and sorting clauses in SQL?
- What are aggregate functions and how do you use them?

---
*Source: Crio MySQL module notes, reorganized into a repo for ongoing SQL practice.*

# Database Basics

## What is a database?
A database is an organized collection of data — designed to make storing, updating,
and retrieving data easy. It could hold sales transactions, customer info, financial
data, product info, etc.

## RDBMS options in the market

| Database | Created by | Year | Language |
|---|---|---|---|
| Oracle | Larry Ellison | 1979 | Java, C++, assembly |
| MySQL | Michael Widenius & David Axmark | 1995 | C, C++ |
| MS SQL Server | Microsoft | 1989 | C, C++ |
| PostgreSQL | Michael Stonebraker | 1996 | C |

Oracle leads market share, but MySQL is open-source/free and commonly used for
web apps — that's why this module (and most learning material) uses MySQL.

## What is MySQL?
- Open-source **RDBMS** (Relational Database Management System).
- Stores data in **databases → tables → rows & columns**.
- Each table has a **schema** — basically a blueprint defining columns, data
  types, relationships, and rules for the data.
- Used by Pinterest, Twitter, YouTube, Netflix, Spotify, NASA, Walmart, PayPal, etc.

## Why not just use Excel/Notepad?
- Databases scale to huge volumes of data, support concurrent access (many
  users reading/writing at once), enforce data integrity (types, constraints),
  and allow fast structured querying — none of which Excel/Notepad handle well
  at scale.

## Flashcards
- **Q: What's the difference between a database and a table?**
  A: A database is the overall container; a table is one structured collection
  of rows/columns inside it (e.g., `hotels` database → `hotel_details` table).
- **Q: Why MySQL over Oracle for learning?**
  A: Free, open-source, same core relational concepts apply across RDBMS systems.

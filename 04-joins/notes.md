# SQL Joins

A **join** combines rows from two or more tables based on a related column
(e.g., matching a `hotel_id` across a hotel-details table and a hotel-rooms table).

## Types of joins

| Join | Returns |
|---|---|
| **INNER JOIN** | Only rows that match in *both* tables |
| **LEFT JOIN** | All rows from the left table + matches from the right (NULL if no match) |
| **RIGHT JOIN** | All rows from the right table + matches from the left (NULL if no match) |
| **FULL OUTER JOIN** | All rows from both tables (NULLs where no match) — MySQL doesn't have `FULL JOIN` natively, so it's done via `LEFT JOIN UNION ALL RIGHT JOIN` |

## Syntax templates
```sql
-- INNER JOIN
SELECT column1, column2
FROM table1
INNER JOIN table2
ON table1.column = table2.column;

-- LEFT JOIN
SELECT column1, column2
FROM table1
LEFT JOIN table2
ON table1.column = table2.column;

-- RIGHT JOIN
SELECT column1, column2
FROM table1
RIGHT JOIN table2
ON table1.column = table2.column;

-- FULL OUTER JOIN (MySQL workaround)
SELECT column1, column2
FROM table1
LEFT JOIN table2 ON table1.column = table2.column
UNION ALL
SELECT column1, column2
FROM table1
RIGHT JOIN table2 ON table1.column = table2.column;
```

## Practice DB: BookStore
Set up via `setup/joins_config.sh` (also copied to `../../data/`).
Tables: `Books` (Id, Name, Price, CategoryId, AuthorId), `Categories` (Id, Name),
`Authors` (Id, Name).

See `queries.sql` for the actual join queries run against `Books` ↔ `Categories`.

## Flashcards
- **Q: Difference between LEFT JOIN and INNER JOIN?**
  A: INNER JOIN only keeps matching rows; LEFT JOIN keeps *all* left-table rows
  even if there's no match (fills NULLs on the right side).
- **Q: How do you do a FULL OUTER JOIN in MySQL?**
  A: `LEFT JOIN ... UNION ALL ... RIGHT JOIN` (MySQL has no native `FULL JOIN`).

# Filtering, Sorting & Aggregate Functions

## ORDER BY
Sorts rows alphanumerically by a column. Default = ascending; use `DESC` for descending.

```sql
SELECT column1, column2
FROM table_name
ORDER BY column1, column2 ASC|DESC;
```

```sql
-- Hotels in decreasing order of star rating
SELECT *
FROM hotel_details
ORDER BY star_rating DESC;
```

### Sorting by two columns
If you `ORDER BY col1, col2`, rows are sorted by `col1` first; whenever `col1`
values tie, `col2` is used as the tiebreaker.

```sql
SELECT *
FROM hotel_details
ORDER BY city ASC, star_rating DESC;
```

## LIMIT / OFFSET (pagination)
```sql
SELECT *
FROM hotel_details
ORDER BY star_rating DESC
LIMIT 5 OFFSET 10; -- skip first 10, return next 5
```

## Aggregate functions

| Function | Purpose |
|---|---|
| `COUNT()` | Counts non-NULL rows |
| `SUM()` | Adds up values |
| `MIN()` / `MAX()` | Lowest / highest value |
| `AVG()` | Average value |

```sql
-- How many hotels in Bengaluru?
SELECT COUNT(*) FROM hotel_details WHERE city = 'Bangalore';

-- Count of 5-star hotels
SELECT COUNT(*) FROM hotel_details WHERE star_rating = 5;

-- Average star rating in Bangalore
SELECT AVG(star_rating) FROM hotel_details WHERE city = 'Bangalore';

-- Minimum star rating across all hotels
SELECT MIN(star_rating) FROM hotel_details;
```

## Flashcards
- **Q: What does `LIMIT 5 OFFSET 10` do?**
  A: Skips the first 10 rows, then returns the next 5 — used for pagination.
- **Q: Which aggregate function would you use to find the priciest room?**
  A: `MAX(price)`.

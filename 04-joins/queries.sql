-- ============================================
-- Join practice queries — BookStore.Books / Categories
-- ============================================

-- 1. INNER JOIN: only matching CategoryId <-> Categories.Id
SELECT Books.CategoryId, Books.Name, Categories.Id, Categories.Name
FROM Books
INNER JOIN Categories
ON Books.CategoryId = Categories.Id;

-- 2. LEFT JOIN: all Books rows, matching Categories where available
SELECT Books.CategoryId, Books.Name, Categories.Id, Categories.Name
FROM Books
LEFT JOIN Categories
ON Books.CategoryId = Categories.Id;

-- 3. RIGHT JOIN: all Categories rows, matching Books where available
SELECT Books.CategoryId, Books.Name, Categories.Id, Categories.Name
FROM Books
RIGHT JOIN Categories
ON Books.CategoryId = Categories.Id;

-- 4. FULL OUTER JOIN equivalent: all rows from both tables
SELECT Books.CategoryId, Books.Name, Categories.Id, Categories.Name
FROM Books
LEFT JOIN Categories ON Books.CategoryId = Categories.Id
UNION ALL
SELECT Books.CategoryId, Books.Name, Categories.Id, Categories.Name
FROM Books
RIGHT JOIN Categories ON Books.CategoryId = Categories.Id;

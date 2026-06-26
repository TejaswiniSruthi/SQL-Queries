-- ============================================
-- DML / CRUD practice queries — hotels.hotel_details
-- ============================================

-- 1. Find star rating + hotel name for hotels in Bangalore
SELECT hotel_name, star_rating
FROM hotel_details
WHERE city = 'Bangalore';

-- 2. Hotels located in Chennai OR Bangalore
SELECT *
FROM hotel_details
WHERE city = 'Bangalore' OR city = 'Chennai';

-- 3. Insert a new hotel
INSERT INTO hotel_details (hotel_id, hotel_name, city, star_rating)
VALUES (8, 'JW Marriott', 'Pune', 5);

-- 4. Check current rating of Grand Mercury (Bangalore) before update
SELECT star_rating
FROM hotel_details
WHERE hotel_name = 'Grand Mercury' AND city = 'Bangalore';

-- 5. Update Grand Mercury (Bangalore) to 4-star
UPDATE hotel_details
SET star_rating = 4
WHERE hotel_name = 'Grand Mercury' AND city = 'Bangalore';

-- 6. Confirm the update
SELECT star_rating
FROM hotel_details
WHERE hotel_name = 'Grand Mercury' AND city = 'Bangalore';

-- 7. Remove all hotels in Magadi (service shutting down there)
DELETE FROM hotel_details WHERE city = 'Magadi';

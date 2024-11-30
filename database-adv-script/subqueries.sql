-- Find all properties where the average rating of the reviews is greater than 4.0
SELECT
    Property.property_id,
    Property.name,
    Property.description,
    Property.location,
    Property.pricepernight
FROM Property
WHERE property_id IN (
    SELECT property_id
    FROM Review
    GROUP BY property_id
    HAVING AVG(rating) > 4.0
);

-- Correlated subquery to find users who have made more than 3 bookings
SELECT
    User.user_id,
    User.first_name,
    User.last_name,
    User.email
FROM User
WHERE (
    SELECT COUNT(*)
    FROM Booking
    WHERE Booking.user_id = User.user_id
) > 3;
-- INNER JOIN to retrieve bookings with their corresponding customers
SELECT
    Booking.booking_id,
    Booking.property_id,
    Booking.start_date,
    Booking.end_date,
    Booking.total_price,
    Booking.status,
    User.user_id,
    User.first_name,
    User.last_name,
    User.email,
From Booking
INNER JOIN User ON Booking.user_id = User.user_id;

-- LEFT JOIN to retrieve all properties and their reviews
SELECT
    Property.property_id,
    Property.name AS property_name,
    Property.description,
    Property.location,
    Property.pricepernight,
    Review.review_id,
    Review.rating,
    Review.comment,
    Review.created_at AS review_date
FROM Property
LEFT JOIN Review ON Property.property_id = Review.property_id;

-- FULL OUTER JOIN to retrieve all users and all bookings
SELECT
    User.user_id,
    User.first_name,
    User.last_name,
    User.email,
    Booking.booking_id,
    Booking.property_id,
    Booking.start_date,
    Booking.end_date,
    Booking.total_price,
    Booking.status
FROM User
FULL OUTER JOIN Booking ON User.user_id = Booking.user_id;
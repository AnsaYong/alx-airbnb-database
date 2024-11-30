-- Retrieves all bookings along with the user details, property details, and payment details
SELECT 
    Booking.booking_id,
    Booking.start_date,
    Booking.end_date,
    Booking.total_price,
    Booking.status AS booking_status,
    User.user_id,
    User.first_name,
    User.last_name,
    User.email,
    Property.property_id,
    Property.name AS property_name,
    Property.location AS property_location,
    Payment.payment_id,
    Payment.amount AS payment_amount,
    Payment.payment_date,
    Payment.payment_method
FROM 
    Booking
JOIN 
    User ON Booking.user_id = User.user_id
JOIN 
    Property ON Booking.property_id = Property.property_id
LEFT JOIN 
    Payment ON Booking.booking_id = Payment.booking_id;


-- Updated Query
WITH UserDetails AS (
    SELECT user_id, first_name, last_name, email
    FROM User
),
PropertyDetails AS (
    SELECT property_id, name AS property_name, location AS property_location
    FROM Property
),
PaymentDetails AS (
    SELECT booking_id, payment_id, amount AS payment_amount, payment_date, payment_method
    FROM Payment
)
SELECT 
    b.booking_id,
    b.start_date,
    b.end_date,
    b.total_price,
    b.status AS booking_status,
    ud.first_name,
    ud.last_name,
    ud.email,
    pd.property_name,
    pd.property_location,
    py.payment_id,
    py.payment_amount,
    py.payment_date,
    py.payment_method
FROM 
    Booking b
JOIN 
    UserDetails ud ON b.user_id = ud.user_id
JOIN 
    PropertyDetails pd ON b.property_id = pd.property_id
LEFT JOIN 
    PaymentDetails py ON b.booking_id = py.booking_id;
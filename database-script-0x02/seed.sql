-- User Table
INSERT INTO User (user_id, first_name, last_name, email, password_hash, phone_number, role, created_at)
VALUES
    ('111e4567-e89b-12d3-a456-426614174000', 'Alice', 'Smith', 'alice@example.com', 'hashed_password1', '1234567890', 'guest', CURRENT_TIMESTAMP),
    ('222e4567-e89b-12d3-a456-426614174001', 'Bob', 'Johnson', 'bob@example.com', 'hashed_password2', '1234567891', 'host', CURRENT_TIMESTAMP),
    ('333e4567-e89b-12d3-a456-426614174002', 'Charlie', 'Brown', 'charlie@example.com', 'hashed_password3', NULL, 'admin', CURRENT_TIMESTAMP);

-- Property Table

INSERT INTO Property (property_id, host_id, name, description, location, pricepernight, created_at, updated_at)
VALUES
    ('111e4567-e89b-12d3-a456-426614174003', '222e4567-e89b-12d3-a456-426614174001', 'Cozy Cottage', 'A cozy cottage in the countryside', 'Countryside', 100.00, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    ('222e4567-e89b-12d3-a456-426614174004', '222e4567-e89b-12d3-a456-426614174001', 'Luxury Villa', 'A luxurious villa with a private pool', 'Beachfront', 500.00, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    ('333e4567-e89b-12d3-a456-426614174005', '222e4567-e89b-12d3-a456-426614174001', 'City Apartment', 'A modern apartment in the city center', 'City Center', 200.00, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

-- Booking Table
INSERT INTO Booking (booking_id, property_id, user_id, start_date, end_date, total_price, status, created_at)
VALUES
    ('666e4567-e89b-12d3-a456-426614174005', '444e4567-e89b-12d3-a456-426614174003', '111e4567-e89b-12d3-a456-426614174000', '2024-12-01', '2024-12-07', 900.00, 'confirmed', CURRENT_TIMESTAMP),
    ('777e4567-e89b-12d3-a456-426614174006', '555e4567-e89b-12d3-a456-426614174004', '111e4567-e89b-12d3-a456-426614174000', '2024-12-10', '2024-12-15', 1000.00, 'pending', CURRENT_TIMESTAMP);

-- Payment Table
INSERT INTO Payment (payment_id, booking_id, amount, payment_date, payment_method)
VALUES
    ('888e4567-e89b-12d3-a456-426614174007', '666e4567-e89b-12d3-a456-426614174005', 900.00, CURRENT_TIMESTAMP, 'credit_card'),
    ('999e4567-e89b-12d3-a456-426614174008', '777e4567-e89b-12d3-a456-426614174006', 1000.00, CURRENT_TIMESTAMP, 'paypal');

-- Review Table
INSERT INTO Review (review_id, property_id, user_id, rating, comment, created_at)
VALUES
    ('aaa4567-e89b-12d3-a456-426614174009', '444e4567-e89b-12d3-a456-426614174003', '111e4567-e89b-12d3-a456-426614174000', 5, 'Great place to stay!', CURRENT_TIMESTAMP),
    ('bbb4567-e89b-12d3-a456-426614174010', '555e4567-e89b-12d3-a456-426614174004', '111e4567-e89b-12d3-a456-426614174000', 4, 'Nice villa with a private pool', CURRENT_TIMESTAMP);

-- Message Table
INSERT INTO Message (message_id, sender_id, recipient_id, message_body, sent_at)
VALUES
    ('ccc4567-e89b-12d3-a456-426614174011', '111e4567-e89b-12d3-a456-426614174000', '222e4567-e89b-12d3-a456-426614174001', 'Hi Bob, I am interested in booking your property.', CURRENT_TIMESTAMP),
    ('ddd4567-e89b-12d3-a456-426614174012', '222e4567-e89b-12d3-a456-426614174001', '111e4567-e89b-12d3-a456-426614174000', 'Hi Alice, sure! When would you like to book?', CURRENT_TIMESTAMP);

-- End of seed data
-- User Table Indexes
CREATE UNIQUE INDEX idx_user_email ON User(email);
CREATE INDEX idx_user_user_id ON User(user_id);

-- Booking Table Indexes
CREATE INDEX idx_booking_user_id ON Booking(user_id);
CREATE INDEX idx_booking_property_id ON Booking(property_id);
CREATE INDEX idx_booking_booking_id ON Booking(booking_id);
CREATE INDEX idx_booking_status ON Booking(status);

-- Property Table Indexes
CREATE INDEX idx_property_property_id ON Property(property_id);
CREATE INDEX idx_property_host_id ON Property(host_id);
CREATE INDEX idx_property_location ON Property(location);

### Optimization report for a query that retrieves all bookings along with the user details, property details, and payment details

#### Report before optimization

- +----+-------------+----------+------------+--------+------------------------------+---------------------+---------
- | id | select_type | table | partitions | type | possible_keys | key | key_len | ref | rows | filtered | Extra |
- +----+-------------+----------+------------+--------+------------------------------+---------------------+---------
- |  1 | SIMPLE | Booking  | NULL | ALL | fk_user,idx_booking_property | NULL | NULL | NULL | 1 | 100.00 | NULL |
- |  1 | SIMPLE | Property | NULL | eq_ref | PRIMARY | PRIMARY | 144 | practice_db.Booking.property_id | 1 | 100.00 | NULL |
- |  1 | SIMPLE | Payment  | NULL | ref | idx_payment_booking | idx_payment_booking | 144 | practice_db.Booking.booking_id | 1 | 100.00 | NULL |
- |  1 | SIMPLE | User | NULL | eq_ref | PRIMARY,idx_user_user_id | PRIMARY  144 | practice_db.Booking.user_id | 1 | 100.00 | NULL |
- +----+-------------+----------+------------+--------+------------------------------+---------------------+---------
- 4 rows in set, 1 warning (0.07 sec)

#### Report after optimization

- +----+-------------+----------+------------+--------+------------------------------+---------------------+---------
- | id | select_type | table | partitions | type | possible_keys | key | key_len | ref | rows | filtered | Extra |
- +----+-------------+----------+------------+--------+------------------------------+---------------------+---------
- |  1 | SIMPLE | b | NULL | ALL | fk_user,idx_booking_property | NULL | NULL | NULL | 1 | 100.00 | NULL  |
- |  1 | SIMPLE  | Property | NULL | eq_ref | PRIMARY | PRIMARY | 144 | practice_db.b.property_id | 1 | 100.00 | NULL  |
- |  1 | SIMPLE | Payment  | NULL | ref | idx_payment_booking | idx_payment_booking | 144 | practice_db.b.booking_id | 1 | 100.00 | NULL |
- |  1 | SIMPLE | User | NULL | eq_ref | PRIMARY,idx_user_user_id | PRIMARY | 144 | practice_db.b.user_id | 1 | 100.00 | NULL  |
- +----+-------------+----------+------------+--------+------------------------------+---------------------+---------+-----------
- 4 rows in set, 1 warning (0.00 sec)
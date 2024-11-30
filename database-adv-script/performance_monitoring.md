#### Performance monitoring

I used EXPLAIN ANALYZE to monitor the retrieval of all bookings.

The query relied on **full table scans** for Booking, User, and Property tables. Joins on user_id and property_id **lacked supporting indexes, leading to high execution time**. Filtering by date ranges was **inefficient without partitioning or indexes** on the start_date column in Booking.

After impolementing changes, the following key improvements were observed:

Execution time significantly reduced due to targeted indexing and partitioning. Rows scanned dropped substantially, focusing operations on relevant data subsets. JOIN operations became more efficient, reducing the load on the database for frequently run queries.
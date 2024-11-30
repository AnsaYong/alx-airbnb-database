#### Performance Comparison: Report
Before implementing partitioning, queries on the Booking table exhibited higher execution times due to full table scans. Every query scanned all rows in the table regardless of the date range specified, leading to inefficient processing and slower performance. The query complexity was higher as the database had to process the entire table for each query.


After partitioning the table by the start_date column, the query performance improved significantly. The execution time was reduced as the database restricted its operations to the relevant partitions instead of scanning the entire table. This optimization also reduced the number of rows scanned, focusing only on rows within the targeted date range. As a result, query complexity decreased, with operations being limited to the appropriate partitions.


The key improvements from partitioning include a significant reduction in rows scanned and faster query execution times, particularly for large datasets with date-based filtering requirements. This demonstrates the effectiveness of partitioning in optimizing query performance.
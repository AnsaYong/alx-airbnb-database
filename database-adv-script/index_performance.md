### Indexing for Optimization

The following high-usage columns are present in the User, Booking, and Property tables:

#### User table
    - email (used to check user on log in)
    - user_id (used for joining with other tables)

#### Booking table
    - user_id (used for joining with the User table)
    - property_id (used for joining with the Property table)    
    - booking_id (used for uniquely identifying and looking up bookings)
    - status (used in WHERE clauses for filtering bookings by their current state)

#### Property table
    - property_id (used for joining with other tables)
    - host_id (used for joining with the User table (for property owners/hosts))
    - location (used for filtering properties based on location in queries)


#### Comment:
- After indexing, the search time descreases signficantly and all indexes (e.g. PRIMARY,idx_user_user_id)
that can possibly be used are included under the "possible_keys" column in the output tables
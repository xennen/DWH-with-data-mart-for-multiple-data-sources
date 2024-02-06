create table if not exists dds.dm_orders
(
    id            serial
        primary key,
    user_id       integer not null
        constraint dm_orders_to_users_fk
            references dds.dm_users,
    restaurant_id integer not null
        constraint dm_orders_to_restaurants_fk
            references dds.dm_restaurants,
    timestamp_id  integer not null
        constraint dm_orders_to_timestamps_fk
            references dds.dm_timestamps,
    order_key     varchar not null
        constraint order_key_unique
            unique,
    order_status  varchar not null
);


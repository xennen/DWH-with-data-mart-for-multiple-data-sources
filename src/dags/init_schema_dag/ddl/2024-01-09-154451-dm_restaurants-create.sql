create table if not exists dds.dm_restaurants
(
    id              serial
        primary key,
    restaurant_id   varchar   not null
        constraint restaurant_id_unique
            unique,
    restaurant_name varchar   not null,
    active_from     timestamp not null,
    active_to       timestamp not null
);



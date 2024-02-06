create table if not exists dds.dm_couriers
(
    id           serial primary key,
    courier_id   varchar not null unique,
    courier_name varchar not null
);
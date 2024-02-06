create table if not exists dds.dm_products
(
    id            serial
        primary key,
    restaurant_id integer                  not null
        references dds.dm_restaurants,
    product_id    varchar                  not null
        constraint product_id_unique
            unique,
    product_name  varchar                  not null,
    product_price numeric(14, 2) default 0 not null
        constraint check_zero
            check (product_price >= (0)::numeric),
    active_from   timestamp                not null,
    active_to     timestamp                not null
);



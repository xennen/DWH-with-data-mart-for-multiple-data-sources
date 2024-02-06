create table if not exists dds.fct_deliveries
(
    id          serial primary key,
    delivery_id varchar                                  not null unique,
    order_ts    int references dds.dm_timestamps (id)    not null,
    delivery_ts int references dds.dm_timestamps (id)    not null,
    order_id    int references dds.dm_orders (id)        not null,
    courier_id  int references dds.dm_couriers (id)      not null,
    rate        smallint check ( rate between 1 and 5 )  not null,
    sum         numeric(14, 2) check ( sum >= 0.00 )     not null,
    tip_sum     numeric(14, 2) check ( tip_sum >= 0.00 ) not null
);
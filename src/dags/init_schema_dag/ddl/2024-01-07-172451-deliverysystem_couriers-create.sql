create table if not exists stg.deliverysystem_couriers
(
    id         serial primary key,
    object_id  varchar                 not null unique,
    object_value text                    not null,
    update_ts    timestamp not null
);
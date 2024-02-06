create table if not exists dds.dm_users
(
    id         serial
        primary key,
    user_id    varchar not null
        constraint user_id_unique
            unique,
    user_name  varchar not null,
    user_login varchar not null
);



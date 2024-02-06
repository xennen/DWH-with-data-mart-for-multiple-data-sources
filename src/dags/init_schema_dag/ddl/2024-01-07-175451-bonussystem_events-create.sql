create table if not exists stg.bonussystem_events
(
    id          integer   not null
        primary key,
    event_ts    timestamp not null,
    event_type  varchar   not null,
    event_value text      not null
);


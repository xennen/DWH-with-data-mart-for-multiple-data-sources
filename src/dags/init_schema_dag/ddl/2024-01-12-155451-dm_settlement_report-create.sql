create table if not exists cdm.dm_settlement_report
(
    id                       serial
        constraint id_pkey
            primary key,
    restaurant_id            varchar                  not null,
    restaurant_name          varchar                  not null,
    settlement_date          date                     not null
        constraint dm_settlement_report_settlement_date_check
            check ((settlement_date >= '2022-01-01'::date) AND (settlement_date < '2500-01-01'::date)),
    orders_count             integer        default 0 not null
        constraint orders_count_more_then_zero
            check (orders_count >= 0),
    orders_total_sum         numeric(14, 2) default 0 not null
        constraint orders_total_sum_more_then_zero
            check (orders_total_sum >= (0)::numeric),
    orders_bonus_payment_sum numeric(14, 2) default 0 not null
        constraint orders_bonus_payment_sum_more_then_zero
            check (orders_bonus_payment_sum >= (0)::numeric),
    orders_bonus_granted_sum numeric(14, 2) default 0 not null
        constraint orders_bonus_granted_sum_more_then_zero
            check (orders_bonus_granted_sum >= (0)::numeric),
    order_processing_fee     numeric(14, 2) default 0 not null
        constraint order_processing_fee_more_then_zero
            check (order_processing_fee >= (0)::numeric),
    restaurant_reward_sum    numeric(14, 2) default 0 not null
        constraint restaurant_reward_sum_more_then_zero
            check (restaurant_reward_sum >= (0)::numeric),
    constraint restaurant_id_check
        unique (restaurant_id, settlement_date)
);



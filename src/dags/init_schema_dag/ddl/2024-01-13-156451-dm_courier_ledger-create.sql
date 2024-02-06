create table if not exists cdm.dm_courier_ledger
(
    id                   serial primary key,
    courier_id           varchar not null,
    courier_name         varchar not null,
    settlement_year      smallint check ( settlement_year between 2022 and 2500 ),
    settlement_month     smallint check ( settlement_month between 1 and 12 ),
    orders_count         int            default 0 check ( orders_count >= 0 ),
    orders_total_sum     numeric(14, 2) default 0.00 check ( orders_total_sum >= 0.00 ),
    rate_avg             numeric(4, 2)  default 0.00 check ( rate_avg between 0.00 and 5.00 ),
    order_processing_fee numeric(14, 2) default 0.00 check ( order_processing_fee >= 0.00 ),
    courier_order_sum    numeric(14, 2) default 0.00 check ( courier_order_sum >= 0.00 ),
    courier_tips_sum     numeric(14, 2) default 0.00 check ( courier_tips_sum >= 0.00 ),
    courier_reward_sum   numeric(14, 2) default 0.00 check ( courier_reward_sum >= 0.00 ),
    constraint dm_courier_ledger_unique unique (courier_id, settlement_year, settlement_month)
);
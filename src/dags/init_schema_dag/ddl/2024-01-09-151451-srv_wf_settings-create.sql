create table if not exists dds.srv_wf_settings
(
    id                integer generated always as identity
        primary key,
    workflow_key      varchar not null
        unique,
    workflow_settings json    not null
);


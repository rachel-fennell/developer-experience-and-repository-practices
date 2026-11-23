create table warehouses (
    id   bigint generated always as identity primary key,
    name text not null unique
);
insert into warehouses (name) values ('North'), ('Central'), ('Riverside');
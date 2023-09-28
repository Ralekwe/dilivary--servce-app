-- SQL script for backend service (customer app)
create table if not exists delivery_customer (
    delivery_customer_id serial primary key,
    customer_uid varchar(50),
    login varchar(50), 
    email varchar(50),
    phone_number varchar(50),
    password varchar(50)
);
create table if not exists delivery_temp_customer (
    delivery_temp_customer_id serial primary key,
    customer_uid varchar(50),
    login varchar(50), 
    email varchar(50),
    phone_number varchar(50),
    password varchar(50)
);
create table if not exists delivery_customer_token (
    delivery_customer_token_id serial primary key,
    token_guid varchar(50),
    token_begin_dt timestamp,
    token_end_dt timestamp,
    customer_id integer references delivery_customer
);
create table if not exists delivery_category (
    delivery_category_id serial primary key,
    name varchar(50), 
    description varchar(255),
    picture bytea
);
create table if not exists delivery_menuitem (
    delivery_menuitem_id serial primary key,
    name varchar(50),
    price double precision,
    description varchar(255),
    delivery_category_id integer references delivery_category,
    picture bytea
);

insert into delivery_category (name, description) values ('Breakfast', '');
insert into delivery_category (name, description) values ('Rice bowl', '');
insert into delivery_category (name, description) values ('Salad', '');
insert into delivery_category (name, description) values ('Chicken', '');
insert into delivery_category (name, description) values ('Crezy beef', '');
insert into delivery_category (name, description) values ('Burger', '');
insert into delivery_category (name, description) values ('Cake', '');
insert into delivery_category (name, description) values ('Juice', '');

insert into delivery_menuitem (name, price, description, delivery_category_id) values ('Berries', 12, '', 1);
insert into delivery_menuitem (name, price, description, delivery_category_id) values ('Cold cereal', 13, '', 1);
insert into delivery_menuitem (name, price, description, delivery_category_id) values ('Cottage cheese', 12, '', 1);
insert into delivery_menuitem (name, price, description, delivery_category_id) values ('Eggs', 8, '', 1);
insert into delivery_menuitem (name, price, description, delivery_category_id) values ('Green tea', 14, '', 1);
insert into delivery_menuitem (name, price, description, delivery_category_id) values ('Oatmeals', 12, '', 1);
insert into delivery_menuitem (name, price, description, delivery_category_id) values ('Peanut butter', 11, '', 1);

insert into delivery_menuitem (name, price, description, delivery_category_id) values ('Butter chicken rice', 12, '', 2);
insert into delivery_menuitem (name, price, description, delivery_category_id) values ('Chicken briyani', 13, '', 2);
insert into delivery_menuitem (name, price, description, delivery_category_id) values ('Braised beef rice', 12, '', 2);
insert into delivery_menuitem (name, price, description, delivery_category_id) values ('Rice bowl', 8, '', 2);
insert into delivery_menuitem (name, price, description, delivery_category_id) values ('Veg briyani', 11, '', 2);
insert into delivery_menuitem (name, price, description, delivery_category_id) values ('Plain rice', 11, '', 2);

insert into delivery_menuitem (name, price, description, delivery_category_id) values ('Antipasto salad', 12, '', 3);
insert into delivery_menuitem (name, price, description, delivery_category_id) values ('BBQ pork salad', 13, '', 3);
insert into delivery_menuitem (name, price, description, delivery_category_id) values ('Broccoli rabe', 12, '', 3);
insert into delivery_menuitem (name, price, description, delivery_category_id) values ('Ceasar salad', 8, '', 3);
insert into delivery_menuitem (name, price, description, delivery_category_id) values ('Chicken salad', 14, '', 3);
insert into delivery_menuitem (name, price, description, delivery_category_id) values ('Crispy salad', 12, '', 3);
insert into delivery_menuitem (name, price, description, delivery_category_id) values ('Ponir mix salad', 11, '', 3);

insert into delivery_menuitem (name, price, description, delivery_category_id) values ('Finger chicken', 12, '', 4);
insert into delivery_menuitem (name, price, description, delivery_category_id) values ('Chicken grilled', 13, '', 4);
insert into delivery_menuitem (name, price, description, delivery_category_id) values ('Chicken grilled with butter', 12, '', 4);
insert into delivery_menuitem (name, price, description, delivery_category_id) values ('Chicken wrap', 8, '', 4);
insert into delivery_menuitem (name, price, description, delivery_category_id) values ('Chicken marsala', 14, '', 4);
insert into delivery_menuitem (name, price, description, delivery_category_id) values ('Chicken francese', 12, '', 4);
insert into delivery_menuitem (name, price, description, delivery_category_id) values ('Chicken prame', 11, '', 4);

insert into delivery_menuitem (name, price, description, delivery_category_id) values ('BBQ beef', 12, '', 5);
insert into delivery_menuitem (name, price, description, delivery_category_id) values ('Beef fries', 13, '', 5);
insert into delivery_menuitem (name, price, description, delivery_category_id) values ('Beef burger', 12, '', 5);
insert into delivery_menuitem (name, price, description, delivery_category_id) values ('Beef grilled', 8, '', 5);
insert into delivery_menuitem (name, price, description, delivery_category_id) values ('Beef meal', 14, '', 5);
insert into delivery_menuitem (name, price, description, delivery_category_id) values ('Beef meat steak', 12, '', 5);
insert into delivery_menuitem (name, price, description, delivery_category_id) values ('Beef bogorok', 11, '', 5);

insert into delivery_menuitem (name, price, description, delivery_category_id) values ('Luger burger', 12, '', 6);
insert into delivery_menuitem (name, price, description, delivery_category_id) values ('Le pigeon burger', 13, '', 6);
insert into delivery_menuitem (name, price, description, delivery_category_id) values ('Double animal style', 12, '', 6);
insert into delivery_menuitem (name, price, description, delivery_category_id) values ('The original burger', 8, '', 6);
insert into delivery_menuitem (name, price, description, delivery_category_id) values ('Whiskey king burger', 14, '', 6);
insert into delivery_menuitem (name, price, description, delivery_category_id) values ('The company burger', 12, '', 6);
insert into delivery_menuitem (name, price, description, delivery_category_id) values ('Dyer''s deep-fried burger', 12, '', 6);
insert into delivery_menuitem (name, price, description, delivery_category_id) values ('The Lola burger', 11, '', 6);

insert into delivery_menuitem (name, price, description, delivery_category_id) values ('Black forest gateau', 12, '', 7);
insert into delivery_menuitem (name, price, description, delivery_category_id) values ('Pineapple cake', 11, '', 7);
insert into delivery_menuitem (name, price, description, delivery_category_id) values ('Eggless truffle cake', 11, '', 7);
insert into delivery_menuitem (name, price, description, delivery_category_id) values ('Coffee cake with mocha frosting', 13, '', 7);
insert into delivery_menuitem (name, price, description, delivery_category_id) values ('Fudgy chocolate cake', 11, '', 7);
insert into delivery_menuitem (name, price, description, delivery_category_id) values ('Mango meringue cake', 12, '', 7);

insert into delivery_menuitem (name, price, description, delivery_category_id) values ('Orange juice', 12, '', 8);
insert into delivery_menuitem (name, price, description, delivery_category_id) values ('Lemonade', 8, '', 8);
insert into delivery_menuitem (name, price, description, delivery_category_id) values ('Apple juice', 13, '', 8);
insert into delivery_menuitem (name, price, description, delivery_category_id) values ('Grape juice', 15, '', 8);
insert into delivery_menuitem (name, price, description, delivery_category_id) values ('Pineapple juice', 14, '', 8);
insert into delivery_menuitem (name, price, description, delivery_category_id) values ('Cranberry juice', 16, '', 8);

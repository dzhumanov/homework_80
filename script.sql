create table categories
(
    id          int auto_increment
        primary key,
    name        varchar(255) not null,
    description text         null
);

create table places
(
    id          int auto_increment
        primary key,
    name        varchar(255) not null,
    description text         null
);

create table items
(
    id          int auto_increment
        primary key,
    categoryId  int          not null,
    placeId     int          not null,
    name        varchar(255) not null,
    description text         null,
    image       varchar(255) null,
    constraint items_categories_id_fk
        foreign key (categoryId) references categories (id),
    constraint items_places_id_fk
        foreign key (placeId) references places (id)
);

INSERT INTO categories (id, name, description) VALUES (1, 'coffeeMachine', 'Main part of coffeeshop');
INSERT INTO categories (id, name, description) VALUES (2, 'Boiler', 'For hot warer');
INSERT INTO categories (id, name, description) VALUES (3, 'Cofee Grinder', null);
INSERT INTO categories (id, name, description) VALUES (4, 'Oven', 'For kitchen');
INSERT INTO categories (id, name, description) VALUES (5, 'Table', null);
INSERT INTO categories (id, name, description) VALUES (6, 'Chairs', null);
INSERT INTO categories (id, name, description) VALUES (7, 'Plates', null);

INSERT INTO places (id, name, description) VALUES (1, 'Bar', 'Bar that locates in center');
INSERT INTO places (id, name, description) VALUES (2, 'Kitchen', 'Where our food comes from');
INSERT INTO places (id, name, description) VALUES (3, 'Guest zone', null);

INSERT INTO items (id, categoryId, placeId, name, description, image) VALUES (2, 1, 1, 'La Marzocco KB90', 'Very top coffee machine', null);
INSERT INTO items (id, categoryId, placeId, name, description, image) VALUES (3, 2, 1, 'Tefal 90', 'Default boiler', null);
INSERT INTO items (id, categoryId, placeId, name, description, image) VALUES (4, 5, 3, 'Wooden table IKEA', null, null);
INSERT INTO items (id, categoryId, placeId, name, description, image) VALUES (5, 6, 3, 'Wooden chair IKEA', null, null);
INSERT INTO items (id, categoryId, placeId, name, description, image) VALUES (7, 3, 1, 'La Marzocco Vulcano', 'Top grinder', '818e248d-fb87-4b84-afc2-9a9711c9a0cd.jpg');


SELECT * FROM items;



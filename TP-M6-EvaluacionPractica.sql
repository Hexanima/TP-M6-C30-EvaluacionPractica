create database if not exists tp_m6_evaluacion;
use tp_m6_evaluacion;

SET FOREIGN_KEY_CHECKS = 0;

drop table if exists users;
create table users (
	id smallint unsigned auto_increment not null,
	name varchar(100) not null,
	email varchar(100) not null,
	password varchar(50) not null,
	primary key (id)
);

drop table if exists categories;
create table categories (
	id smallint unsigned auto_increment not null,
	name varchar(50) not null,
	primary key (id)
);

drop table if exists notes;
create table notes (
	id smallint unsigned auto_increment not null,
	user_id smallint unsigned not null,
	title varchar(100) not null,
	created_at datetime,
	updated_at datetime,
	description text not null,
	can_be_deleted tinyint(1) not null,
	primary key (id),
	foreign key (user_id) references users(id) on delete cascade
);

drop table if exists note_category;
create table note_category (
	id smallint unsigned auto_increment not null,
	note_id smallint unsigned,
	category_id smallint unsigned,
	primary key (id),
	foreign key (note_id) references notes(id) on delete cascade,
	foreign key (category_id) references categories(id) on delete cascade
);

SET FOREIGN_KEY_CHECKS = 1;

/* USUARIOS */
insert into users values (default, "Nico", "nico@fili.com", "123456");
insert into users values (default, "Paulina", "paulina@cocina.com", "Paulina123");
insert into users values (default, "Fabricio", "elfabrixd@admin.com", "F4br1c10");
insert into users values (default, "Juana", "juanita@email.com", "Ju4n42001");
insert into users values (default, "Violeta", "violeta@admin.com", "V10l374xd");
insert into users values (default, "Gertrudis", "gertru@email.com", "G3r7rud1s");
insert into users values (default, "Prueba1", "prueba1@email.com", "Probando1");
insert into users values (default, "Prueba2", "prueba2@email.com", "Probando2");
insert into users values (default, "Prueba3", "prueba3@email.com", "Probando3");
insert into users values (default, "OtroAdmin", "otro@admin.com", "Adm1n1s7r4d0r");

/* NOTAS */

insert into notes values (default, 1, "Como crear un array en JS", "2022-11-07 10:34:09", NULL, "Un array es una lista, se crea usando corchetes []", 0);
insert into notes values (default, 3, "Una palabra de lorem", "2022-11-09 10:34:09", NULL, "Lorem", 0);
insert into notes values (default, 1, "Dos palabras de lorem", "2022-12-07 10:34:09", NULL, "Lorem ipsum", 1);
insert into notes values (default, 1, "Tres palabras de lorem", "2022-12-21 10:34:09", "2022-11-07 10:34:09", "Lorem ipsum dolor", 0);
insert into notes values (default, 2, "Como hacer unos buenos ñoquis", "2023-01-29 10:34:09", NULL, "https://www.paulinacocina.net/receta-de-noquis-del-29-super-faciles/12020", 1);
insert into notes values (default, 5, "Cinco palabras de lorem", now(), NULL, "Lorem ipsum dolor sit amet", 1);
insert into notes values (default, 10, "Seis palabras de lorem", now(), NULL, "Lorem ipsum dolor sit amet, consectetur", 0);
insert into notes values (default, 5, "Siete palabras de lorem", now(), now(), "Lorem ipsum dolor sit amet, consectetur adipiscing", 0);
insert into notes values (default, 4, "Ocho palabras de lorem", now(), NULL, "Lorem ipsum dolor sit amet, consectetur adipiscing elit.", 1);
insert into notes values (default, 2, "Helado de dulce de leche casero", now(), NULL, "https://www.paulinacocina.net/helado-de-dulce-de-leche-casero/8679", 1);

/* CATEGORIAS */
insert into categories values (default, "Tecnologia");
insert into categories values (default, "Cocina");
insert into categories values (default, "Ciencia");
insert into categories values (default, "Politica");
insert into categories values (default, "Hobbies");
insert into categories values (default, "Arte");
insert into categories values (default, "Medicina");
insert into categories values (default, "Deportes");
insert into categories values (default, "Moda");
insert into categories values (default, "Mascotas");

/* NOTA-CATEGORIA */

insert into note_category values (default, 1, 1);
insert into note_category values (default, 1, 3);
insert into note_category values (default, 1, 5);
insert into note_category values (default, 5, 2);
insert into note_category values (default, 5, 3);
insert into note_category values (default, 5, 5);
insert into note_category values (default, 5, 6);
insert into note_category values (default, 6, 7);
insert into note_category values (default, 8, 8);
insert into note_category values (default, 10, 2);
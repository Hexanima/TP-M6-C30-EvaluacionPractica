use tp_m6_evaluacion;

select * from users;

/* Mostrar titulo de nota con nombre del escritor*/
select users.name as Autor, notes.title as Titulo, notes.description as Nota from notes inner join users on notes.user_id = users.id;

/* Mostrar autor, titulo, categoria/s, y descripcion de notas (solo muestra las notas con categoria*/
select users.name as Autor, notes.title as Titulo, categories.name as Categoria, notes.description as Nota from note_category 
inner join notes on note_id = notes.id 
inner join categories on category_id = categories.id
inner join users on users.id = notes.user_id;

/* Mostrar notas editadas */
select * from notes where updated_at;

/* Mostrar notas que pueden ser eliminadas */

select * from notes where can_be_deleted = 1;

select * from notes where user_id = 1;
/* BORRAR notas eliminables */
delete from notes where can_be_deleted = 1;

/* BORRAR un usuario (las notas tambien se borran) */

delete from users where users.id = 1

/* BORRAR una categoria */
select * from note_category;
delete from categories where id = 2;
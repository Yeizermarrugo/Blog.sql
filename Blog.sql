CREATE TABLE "users" (
  "id" SERIAL PRIMARY KEY,
  "user_name" varchar NOT NULL,
  "email" varchar UNIQUE NOT NULL,
  "password" varchar NOT NULL
);

CREATE TABLE "posts" (
  "id" SERIAL PRIMARY KEY,
  "title" varchar NOT NULL,
  "post" text NOT NULL,
  "user_id" int NOT NULL
);

CREATE TABLE "comments" (
  "id" SERIAL PRIMARY KEY,
  "comment" text NOT NULL,
  "post_id" int NOT NULL,
  "user_id" int NOT NULL,
  "created_at" timestamp DEFAULT 'now()',
  "updated_at" timestamp DEFAULT 'now()'
);

ALTER TABLE "posts" ADD FOREIGN KEY ("user_id") REFERENCES "users" ("id");

ALTER TABLE "comments" ADD FOREIGN KEY ("post_id") REFERENCES "posts" ("id");

ALTER TABLE "comments" ADD FOREIGN KEY ("user_id") REFERENCES "users" ("id");

insert into users
(
user_name,
email,
"password" 
) values (
'Yeizer Marrugo',
'yeizer@academlo.com',
'1234'
),
(
'Samuel Padilla',
'samuel@gmail.com',
'1234'
),
(
'Marlon Almanza',
'Marlon@unicolombo.edu.co',
'45678'
),
(
'Omar Medina',
'omar@unicolombo.edu.co',
'45678'
),
(
'Esteban Correa',
'esteban@yosoycachon.com',
'0000'
),
(
'Junior Pacheco',
'junior@gmail.com',
'123456'
),(
'Luis Valencia',
'Luis@gmail.com',
'123456'
),
(
'Julio Mateus',
'Julio@gmail.com',
'123456'
);

insert into posts (title, post, user_id) values (
	'Titulo de prueba1',
	'Esto es un post de prueba. Si ves esto por que el post fue publicado con exito!!',
	1
),(
	'¿Qué es Lorem Ipsum?',
	'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias',
	2
),(
	'¿De dónde viene Lorem Ipsum ?',
	'Al contrario del pensamiento popular, el texto de Lorem Ipsum no es simplemente texto aleatorio. Tiene sus raices en una pieza cl´sica de la literatura del Latin, que data del año 45 antes de Cristo,',
	4
),(
	'¿Por qué lo usamos?',
	'Es un hecho establecido hace demasiado tiempo que un lector se distraerá con el contenido del texto de un sitio mientras que mira su diseño.',
	3
);

insert into comments (comment, post_id, user_id) values (
	'Comentario de prueba',
	1,
	5
),(
	'Totalmente de acuerdo con su post',
	2,
	7
), (
	'Acerto con su publicacion.',
	4,
	6
),(
	'Apoyo su idea y punto de vista',
	3,
	8
);

select id ,user_name, email , "password"  from users;


select * from users where "password" = '0000'

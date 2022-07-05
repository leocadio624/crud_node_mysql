
use biblioteca;
create table editorial(
nombre varchar(20) not null,
direccion varchar(30), 
telefono char(10),
primary key(nombre)
);


insert into editorial (nombre, direccion, telefono) values ('Grupo Z', 'Amatlan 33, Condesa CDMX', '5511223344');
insert into editorial (nombre, direccion, telefono) values ("Grijalbo", "Total DF, CDMX", "1234567890");
insert into editorial (nombre, direccion, telefono) values ("Grupo Editorial Tomo", "Tlalpan CDMX", "5511220044");
insert into editorial (nombre, direccion, telefono) values ("Coleccion Hetzel", "Rue Jacob, Paris", "2400223344");
insert into editorial (nombre, direccion, telefono) values ("Editores Mexicanos", "Coyoacan CDMX", "1234056789");
insert into editorial (nombre, direccion, telefono) values ("Sediento", "California, Condesa CDMX", "5511223344");
insert into editorial (nombre, direccion, telefono) values ("Oceano", "Xoco CDMX", "1230456789");
insert into editorial (nombre, direccion, telefono) values ("Punto de lectura", "Venustiano Carranza CDMX", "1234560789");
insert into editorial (nombre, direccion, telefono) values ("EMECe", "Gustavo A. Madero CDMX", "1234567809");
insert into editorial (nombre, direccion, telefono) values ("TusQuest", "Insurgentes CDMX", "9876543210");
insert into editorial (nombre, direccion, telefono) values ("Alfaguara", "Progreso Nacional, Puebla", "9087654321");
insert into editorial (nombre, direccion, telefono) values ("Alas y Raices", "Cuautemoc CDMX", "9807654321");
insert into editorial (nombre, direccion, telefono) values ("Era", "Nezahualcoyotl, EDOMX", "9870654321");
insert into editorial (nombre, direccion, telefono) values ("Edivision", "Xalapa, Veracruz", "9876054321");
insert into editorial (nombre, direccion, telefono) values ("Editorial Norma", "Morelia, Michoacan", "9876504321");
insert into editorial (nombre, direccion, telefono) values ("Panamericana", "Bogota, Colombia", "9876540321");
insert into editorial (nombre, direccion, telefono) values ("Obelisco", "Buenos Aires, Argentina", "9876543021");
insert into editorial (nombre, direccion, telefono) values ("Penguin House", "Travessera, Espana", "9876543201");
insert into editorial (nombre, direccion, telefono) values ("Letras Vivas", "Politecnico, CDMX", "5512326545");
insert into editorial (nombre, direccion, telefono) values ("Diana", "El Vergel, MX-DF", "5598786446");
insert into editorial (nombre, direccion, telefono) values ("Debolsillo", "Amatlan 33, Condesa CDMX", "5547656048");
insert into editorial (nombre, direccion, telefono) values ("Booket", "Chapultepec de Morales DF", "5536961771");
insert into editorial (nombre, direccion, telefono) values ("LaTrama", "Quad/Graphics, Queretaro", "8864311346");
insert into editorial (nombre, direccion, telefono) values ("Oceano Express", "Xoco DF", "5579461325");
insert into editorial (nombre, direccion, telefono) values ("Ariel", "Catedra 50, Espana", "9567541532");
insert into editorial (nombre, direccion, telefono) values ("Sistemas Tecnicos", "Tlalpan 22, Condesa CDMX", "1023456789");
insert into editorial (nombre, direccion, telefono) values ("Angeles Editores", "Amatlan 33, Condesa CDMX", "1203456789");
insert into editorial (nombre, direccion, telefono) values ("Volcanes", "Toluca Lerma EDOMX", "1234506789");
insert into editorial (nombre, direccion, telefono) values ("Editorial Bochito", "Cuatepec CDMX", "1234567089");
insert into editorial (nombre, direccion, telefono) values ('Alfaohmega','Pitagoras 1139', '55755022' );

create table libro(
isbn varchar(40) not null,
titulo varchar(40) not null,
nombreEd varchar(20),
foreign key(nombreEd) references editorial(nombre)
ON UPDATE CASCADE ON DELETE RESTRICT,
primary key (isbn)
);


insert into libro (isbn, titulo, nombreEd) values ('978-607-316-732-1', 'La Vida Minimal', 'Grijalbo');
insert into libro (isbn, titulo, nombreEd) values ('970-710061-3'     , 'Mexico en la Frontera del Caos', 'Grupo Z');
insert into libro (isbn, titulo, nombreEd) values ('978-84-344-7044-6', 'La Seduccion de las Matematicas', 'Ariel');
insert into libro (isbn, titulo, nombreEd) values ('978-607-735-982-1', 'El Atlas de las Nubes', 'Oceano Express');
insert into libro (isbn, titulo, nombreEd) values ('84-666-1068-5'    , 'El Psicoanalista', 'LaTrama');
insert into libro (isbn, titulo, nombreEd) values ('978-607-07-2455-8', 'Cartas a Chepita', 'Booket');
insert into libro (isbn, titulo, nombreEd) values ('970-749-008-X'    , 'El Tunel', 'Booket');
insert into libro (isbn, titulo, nombreEd) values ('978-607-07-0441-3', 'El Amor en los Tiempos del Colera', 'Diana');
insert into libro (isbn, titulo, nombreEd) values ('968-7888-17-2'    , 'Catedrales de Agua', 'Letras Vivas');
insert into libro (isbn, titulo, nombreEd) values ('978-607-314-810-8', 'Un Monstruo Viene a Verme', 'Penguin House');
insert into libro (isbn, titulo, nombreEd) values ('84-7720-405-5'    , 'El Caballero de la Armadura Oxidada', 'Obelisco');
insert into libro (isbn, titulo, nombreEd) values ('978-958-30-0540-4', 'Discurso del Metodo', 'Panamericana');
insert into libro (isbn, titulo, nombreEd) values ('978-607-310-682-5', 'El Aleph', 'Debolsillo');
insert into libro (isbn, titulo, nombreEd) values ('978-968-15-1294-1', 'Veinte poemas de amor', 'Editores Mexicanos');
insert into libro (isbn, titulo, nombreEd) values ('978-607-14-1139-6', 'La Divina Comedia', 'Editores Mexicanos');
insert into libro (isbn, titulo, nombreEd) values ('978-607-14-1170-9', 'La Metamorfosis', 'Editores Mexicanos');
insert into libro (isbn, titulo, nombreEd) values ('978-607-14-1122-8', '1984', 'Editores Mexicanos');
insert into libro (isbn, titulo, nombreEd) values ('958-04-0483-2'    , 'Chocolate Caliente para el Alma', 'Editorial Norma');
insert into libro (isbn, titulo, nombreEd) values ('968-890-191-1'    , 'Caldo de Pollo para el Alma', 'Edivision');
insert into libro (isbn, titulo, nombreEd) values ('978-607-445-055-2', 'Las Batallas en el Desierto', 'Era');
insert into libro (isbn, titulo, nombreEd) values ('978-968-411-473-9', 'Las Batallas en el Desierto', 'Era');
insert into libro (isbn, titulo, nombreEd) values ('968-411-410-9'    , 'El Principio del Placer', 'Era');
insert into libro (isbn, titulo, nombreEd) values ('968-411-181-1'    , 'Aura', 'Era');
insert into libro (isbn, titulo, nombreEd) values ('970-35-1436-7'    , 'La noche de la Muneca', 'Alas y Raices');
insert into libro (isbn, titulo, nombreEd) values ('968-19-0534-2'    , 'El cuento de la isla desconocida', 'Alfaguara');
insert into libro (isbn, titulo, nombreEd) values ('978-607-11-2671-9', 'Historias de Cronopios y de Famas', 'Alfaguara');
insert into libro (isbn, titulo, nombreEd) values ('978-607-421-446-8', 'El Taller del tiempo', 'TusQuest');
insert into libro (isbn, titulo, nombreEd) values ('978-607-421-619-6', 'Hanna y sus hermanas', 'TusQuest');
insert into libro (isbn, titulo, nombreEd) values ('978-607-07-0442-0', 'El Principito', 'EMECe');
insert into libro (isbn, titulo, nombreEd) values ('978-970-731-115-2', 'Ensayo sobre la ceguera', 'Punto de lectura');
insert into libro (isbn, titulo, nombreEd) values ('978-607-9201-48-7', 'El baile de las marmotas', 'Sediento');
insert into libro (isbn, titulo, nombreEd) values ('978-84-473-5572-3', 'Veinte mil leguas de viaje submarino', 'Coleccion Hetzel');
insert into libro (isbn, titulo, nombreEd) values ('978-607-415-417-7', 'Las Novelas de Sherlock Holmes', 'Grupo Editorial Tomo');
insert into libro (isbn, titulo, nombreEd) values ('978-607-415-526-6', 'Divina Comedia: El Infierno', 'Grupo Editorial Tomo');


create table autores_libro(
isbn varchar(40) not null,
nombreAutor varchar(20),
primary key(isbn, nombreAutor),
foreign key (isbn) references libro(isbn)
ON UPDATE CASCADE ON DELETE RESTRICT
);

insert into autores_libro (isbn, nombreAutor) values ('978-607-316-732-1', 'Pedro Campos');
insert into autores_libro (isbn, nombreAutor) values ('970-710061-3'     , 'Andres Oppenheimer');
insert into autores_libro (isbn, nombreAutor) values ('978-84-344-7044-6', 'Cristoph Drosser');
insert into autores_libro (isbn, nombreAutor) values ('978-607-735-982-1', 'David Mitchel');
insert into autores_libro (isbn, nombreAutor) values ('84-666-1068-5'    , 'John Katzenbach');
insert into autores_libro (isbn, nombreAutor) values ('978-607-07-2455-8', 'Jaime Sabines');
insert into autores_libro (isbn, nombreAutor) values ('970-749-008-X'    , 'Ernesto Sabato');
insert into autores_libro (isbn, nombreAutor) values ('978-607-07-0441-3', 'Gabriel G. Marquez');
insert into autores_libro (isbn, nombreAutor) values ('968-7888-17-2'    , 'Mario Lopez Roldan');
insert into autores_libro (isbn, nombreAutor) values ('978-607-314-810-8', 'Patrick Ness');
insert into autores_libro (isbn, nombreAutor) values ('84-7720-405-5'    , 'Robert Fisher');
insert into autores_libro (isbn, nombreAutor) values ('978-958-30-0540-4', 'Rene Descartes');
insert into autores_libro (isbn, nombreAutor) values ('978-607-310-682-5', 'Jorge Luis Borges');
insert into autores_libro (isbn, nombreAutor) values ('978-968-15-1294-1', 'Pablo Neruda');
insert into autores_libro (isbn, nombreAutor) values ('978-607-14-1139-6', 'Dante Alighieri');
insert into autores_libro (isbn, nombreAutor) values ('978-607-14-1170-9', 'Franz Kafka');
insert into autores_libro (isbn, nombreAutor) values ('978-607-14-1122-8', 'George Orwell');
insert into autores_libro (isbn, nombreAutor) values ('958-04-0483-2'    , 'Jack Canfield');
insert into autores_libro (isbn, nombreAutor) values ('968-890-191-1'    , 'Jack Canfield');
insert into autores_libro (isbn, nombreAutor) values ('978-607-445-055-2', 'Jose Emilio Pacheco');
insert into autores_libro (isbn, nombreAutor) values ('978-968-411-473-9', 'Jose Emilio Pacheco');
insert into autores_libro (isbn, nombreAutor) values ('968-411-410-9'    , 'Jose Emilio Pacheco');
insert into autores_libro (isbn, nombreAutor) values ('968-411-181-1'    , 'Carlos Fuentes');
insert into autores_libro (isbn, nombreAutor) values ('970-35-1436-7'    , 'Ana Romero');
insert into autores_libro (isbn, nombreAutor) values ('968-19-0534-2'    , 'Jose Saramago');
insert into autores_libro (isbn, nombreAutor) values ('978-607-11-2671-9', 'Julio Cortazar');
insert into autores_libro (isbn, nombreAutor) values ('978-607-421-446-8', 'alvaro Uribe');
insert into autores_libro (isbn, nombreAutor) values ('978-607-421-619-6', 'Woody Allen');
insert into autores_libro (isbn, nombreAutor) values ('978-607-07-0442-0', 'A. sde Saint-Exupery');
insert into autores_libro (isbn, nombreAutor) values ('978-970-731-115-2', 'Jose Saramago');
insert into autores_libro (isbn, nombreAutor) values ('978-607-9201-48-7', 'Gustavo Vila');
insert into autores_libro (isbn, nombreAutor) values ('978-84-473-5572-3', 'Julio Verne');
insert into autores_libro (isbn, nombreAutor) values ('978-607-415-417-7', 'Arthur Conan Doyle');
insert into autores_libro (isbn, nombreAutor) values ('978-607-415-526-6', 'Dante Alighieri');


create table sucursal(
idSucursal varchar(30) not null,
nombre varchar(30) not null,
direccion varchar(40),
primary key(idSucursal)
);
insert into sucursal (idSucursal, nombre, direccion) values ('BK417-A-EB', 'Biblioteca Jose Vasconcelos', 'Buenavista, Ciudad de Mexico'); 
insert into sucursal (idSucursal, nombre, direccion) values ('BK417-C-EB', 'Biblioteca Nacional de Ciencia', 'Instituto Politenico S/N, CDMX'); 
insert into sucursal (idSucursal, nombre, direccion) values ('CV569-A-FR', 'Agua de las Lajas', 'San Juan Joya, CDMX'); 
insert into sucursal (idSucursal, nombre, direccion) values ('SD258-F-QW', 'Biblioteca Central UNAM', 'Ciudad Universitaria, Coyoacan CDMX'); 
 



create table lector(
numTarjeta smallint not null,
nombre varchar(30),
direccion varchar(40),
telefono char(10),
primary key(numTarjeta)
);

insert into lector (numTarjeta, nombre, direccion, telefono) values ('2445', 'Ruben Barron Luna', 'Lazaro Cardenas Cuautepec CDMX', '5573916482');
insert into lector (numTarjeta, nombre, direccion, telefono) values ('2446', 'Mauricio Rodriguez Martinez', 'Ceremonia Venustiano Carranza CDMX', '8891736482');
insert into lector (numTarjeta, nombre, direccion, telefono) values ('2447', 'Julio Perez Hernandez', 'Av. Universidad 300', '7737916482');
insert into lector (numTarjeta, nombre, direccion, telefono) values ('2448', 'David Lira Ricardes', 'Av. Insurgentes 53', '6631978246');
insert into lector (numTarjeta, nombre, direccion, telefono) values ('2449', 'Armand Tavera Gomez', 'Insurgentes Norte CDMX', '9898653215');
insert into lector (numTarjeta, nombre, direccion, telefono) values ('2450', 'Alejandro Hernandez Gomez', 'Ecatepec, EDOMX', '5555553665');
insert into lector (numTarjeta, nombre, direccion, telefono) values ('2451', 'Alfredo Santiago Hernandez', 'Cuatepec CDMX', '5557660382');
insert into lector (numTarjeta, nombre, direccion, telefono) values ('2452', 'Raul Rosete Sanchez', 'Av. 603 San Juan De Aragon', '5559932154');
insert into lector (numTarjeta, nombre, direccion, telefono) values ('2453', 'Ameyalli Lopez Escalante', 'Venustiano Carranza CDMX', '5598774558');
insert into lector (numTarjeta, nombre, direccion, telefono) values ('2454', 'Victor Resendiz Resendiz', 'Nezahualcoyotl, EDOMX', '2256363935');




create table copias_libro(
isbn varchar(40) not null,
idSucursal varchar(30) not null,
numCopias smallint not null,
primary key(isbn, idSucursal),

foreign key(isbn) references libro(isbn)
on delete cascade on update cascade,
foreign key (idSucursal) references sucursal(idSucursal)
ON UPDATE CASCADE ON DELETE RESTRICT
);

insert into copias_libro (isbn, idSucursal, numCopias) values ('978-607-316-732-1', 'BK417-A-EB', 20);
insert into copias_libro (isbn, idSucursal, numCopias) values ('970-710061-3'     , 'BK417-A-EB', 20);
insert into copias_libro (isbn, idSucursal, numCopias) values ('978-84-344-7044-6', 'BK417-A-EB', 20);
insert into copias_libro (isbn, idSucursal, numCopias) values ('978-607-735-982-1', 'BK417-A-EB', 20);
insert into copias_libro (isbn, idSucursal, numCopias) values ('978-607-310-682-5', 'BK417-A-EB', 14);
insert into copias_libro (isbn, idSucursal, numCopias) values ('978-968-15-1294-1', 'BK417-A-EB', 98);
insert into copias_libro (isbn, idSucursal, numCopias) values ('978-607-14-1122-8', 'BK417-A-EB', 29);
insert into copias_libro (isbn, idSucursal, numCopias) values ('958-04-0483-2'    , 'BK417-A-EB', 26);
insert into copias_libro (isbn, idSucursal, numCopias) values ('968-890-191-1'    , 'BK417-A-EB', 26);
insert into copias_libro (isbn, idSucursal, numCopias) values ('978-607-445-055-2', 'BK417-A-EB', 23);
insert into copias_libro (isbn, idSucursal, numCopias) values ('978-968-411-473-9', 'BK417-A-EB', 22);
insert into copias_libro (isbn, idSucursal, numCopias) values ('968-411-410-9'    , 'BK417-A-EB', 55);
insert into copias_libro (isbn, idSucursal, numCopias) values ('968-411-181-1'    , 'BK417-A-EB', 71);
insert into copias_libro (isbn, idSucursal, numCopias) values ('970-35-1436-7'    , 'BK417-A-EB', 80);
insert into copias_libro (isbn, idSucursal, numCopias) values ('978-84-473-5572-3', 'BK417-A-EB', 30);
insert into copias_libro (isbn, idSucursal, numCopias) values ('978-607-415-417-7', 'BK417-A-EB', 95);
insert into copias_libro (isbn, idSucursal, numCopias) values ('978-607-415-526-6', 'BK417-A-EB', 60);


insert into copias_libro (isbn, idSucursal, numCopias) values ('84-666-1068-5'    , 'SD258-F-QW', 55);
insert into copias_libro (isbn, idSucursal, numCopias) values ('978-607-07-2455-8', 'SD258-F-QW', 36);
insert into copias_libro (isbn, idSucursal, numCopias) values ('970-749-008-X'    , 'SD258-F-QW', 54);
insert into copias_libro (isbn, idSucursal, numCopias) values ('978-607-07-0441-3', 'SD258-F-QW', 10);
insert into copias_libro (isbn, idSucursal, numCopias) values ('978-607-310-682-5', 'SD258-F-QW', 31);
insert into copias_libro (isbn, idSucursal, numCopias) values ('978-968-15-1294-1', 'SD258-F-QW', 65);
insert into copias_libro (isbn, idSucursal, numCopias) values ('978-607-14-1139-6', 'SD258-F-QW', 20);
insert into copias_libro (isbn, idSucursal, numCopias) values ('978-607-14-1170-9', 'SD258-F-QW', 10);
insert into copias_libro (isbn, idSucursal, numCopias) values ('978-84-473-5572-3', 'SD258-F-QW', 41);
insert into copias_libro (isbn, idSucursal, numCopias) values ('978-607-415-417-7', 'SD258-F-QW', 12);
insert into copias_libro (isbn, idSucursal, numCopias) values ('978-607-415-526-6', 'SD258-F-QW', 33);



insert into copias_libro (isbn, idSucursal, numCopias) values ('968-7888-17-2'    , 'CV569-A-FR', 21);
insert into copias_libro (isbn, idSucursal, numCopias) values ('978-607-314-810-8', 'CV569-A-FR', 20);
insert into copias_libro (isbn, idSucursal, numCopias) values ('84-7720-405-5'    , 'CV569-A-FR', 20);
insert into copias_libro (isbn, idSucursal, numCopias) values ('978-958-30-0540-4', 'CV569-A-FR', 20);
insert into copias_libro (isbn, idSucursal, numCopias) values ('978-607-310-682-5', 'CV569-A-FR', 20);
insert into copias_libro (isbn, idSucursal, numCopias) values ('978-968-15-1294-1', 'CV569-A-FR', 23);
insert into copias_libro (isbn, idSucursal, numCopias) values ('978-607-14-1139-6', 'CV569-A-FR', 55);
insert into copias_libro (isbn, idSucursal, numCopias) values ('978-607-14-1170-9', 'CV569-A-FR', 10);
insert into copias_libro (isbn, idSucursal, numCopias) values ('978-607-07-0442-0', 'CV569-A-FR', 3);
insert into copias_libro (isbn, idSucursal, numCopias) values ('978-970-731-115-2', 'CV569-A-FR', 6);
insert into copias_libro (isbn, idSucursal, numCopias) values ('978-607-9201-48-7', 'CV569-A-FR', 8);
insert into copias_libro (isbn, idSucursal, numCopias) values ('978-84-473-5572-3', 'CV569-A-FR', 9);


insert into copias_libro (isbn, idSucursal, numCopias) values ('978-607-316-732-1', 'BK417-C-EB', 50);
insert into copias_libro (isbn, idSucursal, numCopias) values ('970-710061-3'     , 'BK417-C-EB', 50);
insert into copias_libro (isbn, idSucursal, numCopias) values ('978-84-344-7044-6', 'BK417-C-EB', 50);
insert into copias_libro (isbn, idSucursal, numCopias) values ('978-607-735-982-1', 'BK417-C-EB', 50);
insert into copias_libro (isbn, idSucursal, numCopias) values ('968-7888-17-2'    , 'BK417-C-EB', 52);
insert into copias_libro (isbn, idSucursal, numCopias) values ('978-607-314-810-8', 'BK417-C-EB', 31);
insert into copias_libro (isbn, idSucursal, numCopias) values ('84-7720-405-5'    , 'BK417-C-EB', 15);
insert into copias_libro (isbn, idSucursal, numCopias) values ('978-958-30-0540-4', 'BK417-C-EB', 16);
insert into copias_libro (isbn, idSucursal, numCopias) values ('978-607-310-682-5', 'BK417-C-EB', 24);
insert into copias_libro (isbn, idSucursal, numCopias) values ('978-968-15-1294-1', 'BK417-C-EB', 18);
insert into copias_libro (isbn, idSucursal, numCopias) values ('968-411-410-9'    , 'BK417-C-EB', 20);
insert into copias_libro (isbn, idSucursal, numCopias) values ('968-411-181-1'    , 'BK417-C-EB', 40);
insert into copias_libro (isbn, idSucursal, numCopias) values ('970-35-1436-7'    , 'BK417-C-EB', 22);
insert into copias_libro (isbn, idSucursal, numCopias) values ('978-84-473-5572-3', 'BK417-C-EB', 11);

create table prestamo(
isbn varchar(40) not null,
idSucursal varchar(30) not null,
numTarjeta smallint not null,
fechaSale date not null,
fechaDevol date not null,

primary key(isbn, idSucursal, numTarjeta),

foreign key(isbn) references libro(isbn)
ON UPDATE CASCADE ON DELETE RESTRICT,

foreign key (idSucursal) references sucursal(idSucursal)
ON UPDATE CASCADE ON DELETE RESTRICT,

foreign key (numTarjeta) references lector(numTarjeta)
ON UPDATE CASCADE ON DELETE RESTRICT
);


--para crud en node
create table libro(
id int auto_increment primary key,
isbn varchar(40) not null,
titulo varchar(40) not null,
nombreEditorial varchar(20) not null,
estado boolean not null
);
insert into libro (isbn, titulo, nombreEditorial, estado) values ('978-607-316-732-1', 'La Vida Minimal', 'Grijalbo', 1);


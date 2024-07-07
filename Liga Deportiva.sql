DROP SCHEMA IF EXISTS liga_deportiva;
CREATE SCHEMA Liga_deportiva;
USE Liga_deportiva;

create table equipos(
	id_equipo int,
	nombre_equipo varchar(30),
    valor_de_marca float,
    valor_de_plantilla float,
    nómina float,
    año_de_fundación int,
    primary key(id_equipo)
);

create table patrocinador(
	id_patrocinador int primary key,
    valor float,
    nombre varchar(20)
);

create table dueños(
	id_dueño int primary key,
	RFC varchar(13),
    direccion varchar(40),
    Nombre varchar(30),
    Patrimonio float
);

create table árbitros(
	n°_cédula int primary key,
    puesto varchar(30),
    nombre varchar(30),
    sueldo varchar(10),
    fecha_de_nacimiento date
);

create table staff(
	n°_cédula int primary key,
    puesto varchar(30),
    nombre varchar(30),
    fecha_de_nacimiento date
);

create table jugador(
	n°_cédula int primary key,
    puesto varchar(70),
    nombre varchar(30),
    fecha_de_nacimiento date,
    edad int,
    dorsal int
);

create table sede(
	id_sede int primary key,
	nombre_sede varchar(70),
    capacidad int,
    ubicación varchar(40)
);

create table partido(
	id_partido int primary key,
    fecha date
);

create table posee(
	registro int,
    dueño int,
    equipo int,
    foreign key(dueño) references dueños(id_dueño),
    foreign key(equipo) references equipos(id_equipo)
);

create table patrocina(
	pago varchar(10),
    id_patrocinador int,
    equipo int,
    foreign key(id_patrocinador) references patrocinador(id_patrocinador),
    foreign key(equipo) references equipos(id_equipo)
);

create table contrato(
	id_contrato int primary key,
    duración int,
    sueldo varchar(10),
    equipo int,
    id_staff int,
    foreign key(equipo) references equipos(id_equipo),
    foreign key(id_staff) references staff(n°_cédula)
);

create table juega_para(
	id_contrato int primary key,
    duración int,
    sueldo varchar(10), 
    equipo int,
    id_jugador int,
    foreign key(equipo) references equipos(id_equipo),
    foreign key(id_jugador) references jugador(n°_cédula)
);

create table tiene(
	equipo int,
    sede int,
    foreign key(equipo) references equipos(id_equipo),
    foreign key(sede) references sede(id_sede)
);

create table juego(
    resultado varchar(6),
    equipo_local int,
    equipo_visita int,
    foreign key(equipo_local) references equipos(id_equipo),
    foreign key(equipo_visita) references equipos(id_equipo)
);

insert into equipos (id_equipo, nombre_equipo, valor_de_marca, valor_de_plantilla, nómina, año_de_fundación) values (1, 'Yadel', 342.13, 259.08, 25.43, 1992);
insert into equipos (id_equipo, nombre_equipo, valor_de_marca, valor_de_plantilla, nómina, año_de_fundación) values (2, 'Leenti', 128.55, 382.15, 58.21, 1986);
insert into equipos (id_equipo, nombre_equipo, valor_de_marca, valor_de_plantilla, nómina, año_de_fundación) values (3, 'Topicware', 408.31, 30.53, 4.2, 2001);
insert into equipos (id_equipo, nombre_equipo, valor_de_marca, valor_de_plantilla, nómina, año_de_fundación) values (4, 'Brainsphere', 583.26, 37.06, 56.35, 2008);
insert into equipos (id_equipo, nombre_equipo, valor_de_marca, valor_de_plantilla, nómina, año_de_fundación) values (5, 'Feedbug', 604.48, 161.54, 91.39, 2011);
insert into equipos (id_equipo, nombre_equipo, valor_de_marca, valor_de_plantilla, nómina, año_de_fundación) values (6, 'Skidoo', 386.71, 272.83, 86.92, 2011);
insert into equipos (id_equipo, nombre_equipo, valor_de_marca, valor_de_plantilla, nómina, año_de_fundación) values (7, 'Eimbee', 115.12, 234.72, 75.2, 2000);
insert into equipos (id_equipo, nombre_equipo, valor_de_marca, valor_de_plantilla, nómina, año_de_fundación) values (8, 'Teklist', 552.8, 244.82, 14.35, 1997);
insert into equipos (id_equipo, nombre_equipo, valor_de_marca, valor_de_plantilla, nómina, año_de_fundación) values (9, 'Nlounge', 338.33, 305.03, 96.24, 1986);
insert into equipos (id_equipo, nombre_equipo, valor_de_marca, valor_de_plantilla, nómina, año_de_fundación) values (10, 'Jabbertype', 332.9, 85.9, 39.76, 1999);
insert into equipos (id_equipo, nombre_equipo, valor_de_marca, valor_de_plantilla, nómina, año_de_fundación) values (11, 'Photojam', 601.83, 53.4, 22.84, 2011);
insert into equipos (id_equipo, nombre_equipo, valor_de_marca, valor_de_plantilla, nómina, año_de_fundación) values (12, 'Roombo', 199.27, 306.9, 99.96, 2011);
insert into equipos (id_equipo, nombre_equipo, valor_de_marca, valor_de_plantilla, nómina, año_de_fundación) values (13, 'Katz', 578.61, 242.33, 99.35, 2001);
insert into equipos (id_equipo, nombre_equipo, valor_de_marca, valor_de_plantilla, nómina, año_de_fundación) values (14, 'Skinte', 543.96, 150.83, 8.03, 2002);
insert into equipos (id_equipo, nombre_equipo, valor_de_marca, valor_de_plantilla, nómina, año_de_fundación) values (15, 'Riffwire', 668.86, 60.81, 85.25, 2006);
insert into equipos (id_equipo, nombre_equipo, valor_de_marca, valor_de_plantilla, nómina, año_de_fundación) values (16, 'Demizz', 375.21, 22.24, 98.13, 2010);
insert into equipos (id_equipo, nombre_equipo, valor_de_marca, valor_de_plantilla, nómina, año_de_fundación) values (17, 'Meeveo', 158.95, 122.89, 71.74, 1997);
insert into equipos (id_equipo, nombre_equipo, valor_de_marca, valor_de_plantilla, nómina, año_de_fundación) values (18, 'Aivee', 393.19, 345.42, 37.19, 2012);

insert into patrocinador (id_patrocinador, valor, nombre) values (1, 1454.97, 'Jaxbean');
insert into patrocinador (id_patrocinador, valor, nombre) values (2, 287.33, 'Eamia');
insert into patrocinador (id_patrocinador, valor, nombre) values (3, 885.46, 'Trilia');
insert into patrocinador (id_patrocinador, valor, nombre) values (4, 475.61, 'Twimm');
insert into patrocinador (id_patrocinador, valor, nombre) values (5, 461.77, 'Quinu');
insert into patrocinador (id_patrocinador, valor, nombre) values (6, 885.8, 'Topiclounge');
insert into patrocinador (id_patrocinador, valor, nombre) values (7, 1017.49, 'Thoughtstorm');
insert into patrocinador (id_patrocinador, valor, nombre) values (8, 313.09, 'Skyba');
insert into patrocinador (id_patrocinador, valor, nombre) values (9, 315.75, 'Fivespan');
insert into patrocinador (id_patrocinador, valor, nombre) values (10, 1229.91, 'Skipstorm');
insert into patrocinador (id_patrocinador, valor, nombre) values (11, 326.22, 'Jaxworks');
insert into patrocinador (id_patrocinador, valor, nombre) values (12, 1250.31, 'Mynte');
insert into patrocinador (id_patrocinador, valor, nombre) values (13, 471.76, 'Quimm');
insert into patrocinador (id_patrocinador, valor, nombre) values (14, 961.04, 'Meedoo');
insert into patrocinador (id_patrocinador, valor, nombre) values (15, 612.35, 'Oodoo');
insert into patrocinador (id_patrocinador, valor, nombre) values (16, 1433.24, 'Skivee');
insert into patrocinador (id_patrocinador, valor, nombre) values (17, 449.62, 'Meembee');
insert into patrocinador (id_patrocinador, valor, nombre) values (18, 1184.24, 'Aivee');
insert into patrocinador (id_patrocinador, valor, nombre) values (19, 236.93, 'Yodoo');
insert into patrocinador (id_patrocinador, valor, nombre) values (20, 989.68, 'Roomm');
insert into patrocinador (id_patrocinador, valor, nombre) values (21, 1076.27, 'Skynoodle');
insert into patrocinador (id_patrocinador, valor, nombre) values (22, 1139.7, 'Skinix');
insert into patrocinador (id_patrocinador, valor, nombre) values (23, 115.72, 'Voomm');
insert into patrocinador (id_patrocinador, valor, nombre) values (24, 849.2, 'Eidel');
insert into patrocinador (id_patrocinador, valor, nombre) values (25, 571.59, 'Flashpoint');

insert into dueños (id_dueño, RFC, direccion, Nombre, Patrimonio) values (1, '212-84-5467', '2703 Redwing Plaza', 'Madelina Squelch', 3746.9);
insert into dueños (id_dueño, RFC, direccion, Nombre, Patrimonio) values (2, '181-82-8197', '41419 Logan Place', 'Doretta Cloughton', 1585.55);
insert into dueños (id_dueño, RFC, direccion, Nombre, Patrimonio) values (3, '692-14-3245', '026 Doe Crossing Road', 'Jone Glyssanne', 1572.45);
insert into dueños (id_dueño, RFC, direccion, Nombre, Patrimonio) values (4, '485-61-4161', '71 Oneill Junction', 'Sally Monnelly', 9777.85);
insert into dueños (id_dueño, RFC, direccion, Nombre, Patrimonio) values (5, '528-82-3781', '6 Eastwood Parkway', 'Lynn Balmadier', 5620.67);
insert into dueños (id_dueño, RFC, direccion, Nombre, Patrimonio) values (6, '798-71-9207', '011 Loftsgordon Road', 'Caressa Itzik', 3289.91);
insert into dueños (id_dueño, RFC, direccion, Nombre, Patrimonio) values (7, '232-63-9666', '819 Kedzie Crossing', 'Josie Roswarne', 5778.39);
insert into dueños (id_dueño, RFC, direccion, Nombre, Patrimonio) values (8, '245-86-9986', '626 Banding Avenue', 'Dena Crush', 1025.86);
insert into dueños (id_dueño, RFC, direccion, Nombre, Patrimonio) values (9, '210-29-5650', '24638 Kim Drive', 'Gonzales McGraith', 3918.29);
insert into dueños (id_dueño, RFC, direccion, Nombre, Patrimonio) values (10, '808-56-4784', '82 Blaine Lane', 'Fabio Franzen', 9859.09);
insert into dueños (id_dueño, RFC, direccion, Nombre, Patrimonio) values (11, '386-22-5055', '682 Hermina Terrace', 'Caprice Schustl', 6113.25);
insert into dueños (id_dueño, RFC, direccion, Nombre, Patrimonio) values (12, '548-79-5812', '01067 Morrow Park', 'Norton Canfield', 2495.81);
insert into dueños (id_dueño, RFC, direccion, Nombre, Patrimonio) values (13, '240-38-5464', '5 Sherman Court', 'Abran Keough', 4509.6);
insert into dueños (id_dueño, RFC, direccion, Nombre, Patrimonio) values (14, '846-11-4503', '7 Darwin Avenue', 'Anica Rudkin', 6157.73);
insert into dueños (id_dueño, RFC, direccion, Nombre, Patrimonio) values (15, '472-06-2579', '3 Hansons Lane', 'Stephi Zanolli', 4511.87);
insert into dueños (id_dueño, RFC, direccion, Nombre, Patrimonio) values (16, '740-54-8573', '84387 Macpherson Drive', 'Cinnamon Santarelli', 6104.19);
insert into dueños (id_dueño, RFC, direccion, Nombre, Patrimonio) values (17, '648-44-1635', '1476 Grayhawk Pass', 'Knox Northwood', 3319.79);
insert into dueños (id_dueño, RFC, direccion, Nombre, Patrimonio) values (18, '857-84-7977', '1 Fairfield Lane', 'Faye Cousen', 6937.9);
insert into dueños (id_dueño, RFC, direccion, Nombre, Patrimonio) values (19, '741-70-4926', '64 Victoria Way', 'Panchito Gateley', 3361.68);
insert into dueños (id_dueño, RFC, direccion, Nombre, Patrimonio) values (20, '696-49-4904', '8423 Forest Hill', 'Etienne Baines', 9614.36);
insert into dueños (id_dueño, RFC, direccion, Nombre, Patrimonio) values (21, '603-39-7692', '39422 Waywood Pass', 'Tuesday Murkus', 1306.57);
insert into dueños (id_dueño, RFC, direccion, Nombre, Patrimonio) values (22, '863-02-5267', '021 Kedzie Lane', 'Brendin Volant', 9345.5);
insert into dueños (id_dueño, RFC, direccion, Nombre, Patrimonio) values (23, '854-83-3218', '56609 Nancy Terrace', 'Athene Coupman', 1669.16);
insert into dueños (id_dueño, RFC, direccion, Nombre, Patrimonio) values (24, '448-79-2748', '14 Atwood Street', 'Adey Goare', 5936.87);
insert into dueños (id_dueño, RFC, direccion, Nombre, Patrimonio) values (25, '279-01-4847', '94089 Declaration Point', 'Merrill Waterhous', 1815.36);
insert into dueños (id_dueño, RFC, direccion, Nombre, Patrimonio) values (26, '584-04-8092', '11 Nelson Way', 'Sabrina Hatcliffe', 3347.81);
insert into dueños (id_dueño, RFC, direccion, Nombre, Patrimonio) values (27, '292-28-9597', '2 Eggendart Crossing', 'Carissa Vedeneev', 9737.84);
insert into dueños (id_dueño, RFC, direccion, Nombre, Patrimonio) values (28, '548-57-6618', '959 Alpine Court', 'Georgena Grigorkin', 1217.52);
insert into dueños (id_dueño, RFC, direccion, Nombre, Patrimonio) values (29, '241-38-4471', '0533 Lakewood Hill', 'Leda Sibbert', 6900.44);
insert into dueños (id_dueño, RFC, direccion, Nombre, Patrimonio) values (30, '439-19-9625', '63555 Blue Bill Park Place', 'Ainslie Tewelson', 9916.87);

insert into árbitros (n°_cédula, puesto, nombre, sueldo, fecha_de_nacimiento) values (1, 'Marketing Assistant', 'Ricardo Egglestone', '$163979.83', '1981-02-18');
insert into árbitros (n°_cédula, puesto, nombre, sueldo, fecha_de_nacimiento) values (2, 'Programmer III', 'Zachary Ridges', '$194654.95', '1975-06-09');
insert into árbitros (n°_cédula, puesto, nombre, sueldo, fecha_de_nacimiento) values (3, 'Social Worker', 'Hayward Footitt', '$205419.11', '1994-02-11');
insert into árbitros (n°_cédula, puesto, nombre, sueldo, fecha_de_nacimiento) values (4, 'Senior Financial Analyst', 'Mariska Freiberg', '$275186.12', '1984-01-17');
insert into árbitros (n°_cédula, puesto, nombre, sueldo, fecha_de_nacimiento) values (5, 'Associate Professor', 'Clarine Odgers', '$280318.51', '1992-01-05');
insert into árbitros (n°_cédula, puesto, nombre, sueldo, fecha_de_nacimiento) values (6, 'Analyst Programmer', 'Arri Branni', '$190593.50', '1976-06-16');
insert into árbitros (n°_cédula, puesto, nombre, sueldo, fecha_de_nacimiento) values (7, 'VP Accounting', 'Debora Dietzler', '$85213.70', '1991-09-27');
insert into árbitros (n°_cédula, puesto, nombre, sueldo, fecha_de_nacimiento) values (8, 'Nuclear Power Engineer', 'Tammie Matussov', '$76168.97', '1990-08-23');
insert into árbitros (n°_cédula, puesto, nombre, sueldo, fecha_de_nacimiento) values (9, 'Tax Accountant', 'Jamie Guillond', '$195471.52', '1981-07-05');
insert into árbitros (n°_cédula, puesto, nombre, sueldo, fecha_de_nacimiento) values (10, 'Software Consultant', 'Basile Gleed', '$104482.11', '1987-08-15');
insert into árbitros (n°_cédula, puesto, nombre, sueldo, fecha_de_nacimiento) values (11, 'Nuclear Power Engineer', 'Savina Burberow', '$44257.18', '1981-03-19');
insert into árbitros (n°_cédula, puesto, nombre, sueldo, fecha_de_nacimiento) values (12, 'Statistician II', 'Pammi Spore', '$196212.60', '1995-11-22');
insert into árbitros (n°_cédula, puesto, nombre, sueldo, fecha_de_nacimiento) values (13, 'Administrative Officer', 'Graig Antonias', '$241154.02', '1982-03-05');
insert into árbitros (n°_cédula, puesto, nombre, sueldo, fecha_de_nacimiento) values (14, 'Staff Accountant II', 'Jessalin Keslake', '$166210.04', '1984-06-17');
insert into árbitros (n°_cédula, puesto, nombre, sueldo, fecha_de_nacimiento) values (15, 'Budget/Accounting Analyst IV', 'Madalyn Cuttell', '$14996.33', '1975-12-09');
insert into árbitros (n°_cédula, puesto, nombre, sueldo, fecha_de_nacimiento) values (16, 'Physical Therapy Assistant', 'Kalle Wasiel', '$261284.88', '1993-04-30');
insert into árbitros (n°_cédula, puesto, nombre, sueldo, fecha_de_nacimiento) values (17, 'Human Resources Manager', 'Ode Paintain', '$138968.35', '1994-10-17');
insert into árbitros (n°_cédula, puesto, nombre, sueldo, fecha_de_nacimiento) values (18, 'Community Outreach Specialist', 'Alex Kovalski', '$145328.54', '1980-03-14');
insert into árbitros (n°_cédula, puesto, nombre, sueldo, fecha_de_nacimiento) values (19, 'Project Manager', 'Fay Colley', '$214971.74', '1980-04-30');
insert into árbitros (n°_cédula, puesto, nombre, sueldo, fecha_de_nacimiento) values (20, 'Marketing Manager', 'Rory Crosetto', '$299800.31', '1995-08-17');
insert into árbitros (n°_cédula, puesto, nombre, sueldo, fecha_de_nacimiento) values (21, 'Civil Engineer', 'Abbi McGowing', '$185528.33', '1982-04-21');
insert into árbitros (n°_cédula, puesto, nombre, sueldo, fecha_de_nacimiento) values (22, 'General Manager', 'Tammy Fawdrie', '$18903.55', '1991-09-10');
insert into árbitros (n°_cédula, puesto, nombre, sueldo, fecha_de_nacimiento) values (23, 'Senior Sales Associate', 'Linn Beswell', '$185505.82', '1985-12-29');
insert into árbitros (n°_cédula, puesto, nombre, sueldo, fecha_de_nacimiento) values (24, 'Database Administrator II', 'Roscoe Coggeshall', '$271287.72', '2000-02-18');
insert into árbitros (n°_cédula, puesto, nombre, sueldo, fecha_de_nacimiento) values (25, 'Research Assistant IV', 'Kit Fickling', '$149812.92', '1991-06-07');
insert into árbitros (n°_cédula, puesto, nombre, sueldo, fecha_de_nacimiento) values (26, 'Teacher', 'Atlante Diggle', '$7635.96', '1994-05-04');
insert into árbitros (n°_cédula, puesto, nombre, sueldo, fecha_de_nacimiento) values (27, 'Recruiting Manager', 'Dian Gaiter', '$3100.44', '1979-10-30');
insert into árbitros (n°_cédula, puesto, nombre, sueldo, fecha_de_nacimiento) values (28, 'VP Accounting', 'Hillier Klezmski', '$202012.12', '1992-09-24');
insert into árbitros (n°_cédula, puesto, nombre, sueldo, fecha_de_nacimiento) values (29, 'Assistant Professor', 'Nickie Waggatt', '$283179.51', '1991-04-01');
insert into árbitros (n°_cédula, puesto, nombre, sueldo, fecha_de_nacimiento) values (30, 'Accounting Assistant IV', 'Dick Klyner', '$106384.66', '1999-08-20');
insert into árbitros (n°_cédula, puesto, nombre, sueldo, fecha_de_nacimiento) values (31, 'Programmer I', 'Renell Gaither', '$35976.72', '1978-01-29');
insert into árbitros (n°_cédula, puesto, nombre, sueldo, fecha_de_nacimiento) values (32, 'Programmer Analyst II', 'Florri Benettini', '$160213.34', '1978-07-16');
insert into árbitros (n°_cédula, puesto, nombre, sueldo, fecha_de_nacimiento) values (33, 'Software Test Engineer IV', 'Frederica Ashcroft', '$247460.77', '1998-03-07');
insert into árbitros (n°_cédula, puesto, nombre, sueldo, fecha_de_nacimiento) values (34, 'Programmer Analyst II', 'Athene Ritmeier', '$170628.62', '1999-07-09');
insert into árbitros (n°_cédula, puesto, nombre, sueldo, fecha_de_nacimiento) values (35, 'VP Sales', 'Lawton Roberds', '$109227.69', '1999-01-26');
insert into árbitros (n°_cédula, puesto, nombre, sueldo, fecha_de_nacimiento) values (36, 'Technical Writer', 'Mohandis Yarham', '$181533.21', '2000-09-27');
insert into árbitros (n°_cédula, puesto, nombre, sueldo, fecha_de_nacimiento) values (37, 'VP Quality Control', 'Walker Honisch', '$257971.25', '1981-08-23');
insert into árbitros (n°_cédula, puesto, nombre, sueldo, fecha_de_nacimiento) values (38, 'Database Administrator II', 'Duky Danniell', '$292252.22', '1993-02-11');
insert into árbitros (n°_cédula, puesto, nombre, sueldo, fecha_de_nacimiento) values (39, 'Health Coach II', 'Janette O''Lehane', '$230780.84', '1993-10-02');
insert into árbitros (n°_cédula, puesto, nombre, sueldo, fecha_de_nacimiento) values (40, 'Technical Writer', 'Hayward Dami', '$269800.54', '1993-07-30');

insert into staff (n°_cédula, puesto, nombre, fecha_de_nacimiento) values (1, 'Assistant Professor', 'Maxwell Glasspool', '1987-05-30');
insert into staff (n°_cédula, puesto, nombre, fecha_de_nacimiento) values (2, 'Software Engineer II', 'Carolina Ughetti', '1997-04-29');
insert into staff (n°_cédula, puesto, nombre, fecha_de_nacimiento) values (3, 'Accounting Assistant III', 'Joly Kroin', '1974-08-27');
insert into staff (n°_cédula, puesto, nombre, fecha_de_nacimiento) values (4, 'Compensation Analyst', 'Glen Bengough', '1992-08-19');
insert into staff (n°_cédula, puesto, nombre, fecha_de_nacimiento) values (5, 'Research Assistant III', 'Chancey Sellack', '1997-01-13');
insert into staff (n°_cédula, puesto, nombre, fecha_de_nacimiento) values (6, 'Structural Engineer', 'Wade Cavanagh', '1979-03-02');
insert into staff (n°_cédula, puesto, nombre, fecha_de_nacimiento) values (7, 'Compensation Analyst', 'Phyllys Formby', '1978-08-09');
insert into staff (n°_cédula, puesto, nombre, fecha_de_nacimiento) values (8, 'Research Nurse', 'Modestine Haselgrove', '1996-03-15');
insert into staff (n°_cédula, puesto, nombre, fecha_de_nacimiento) values (9, 'Chief Design Engineer', 'Gabriel Hamson', '1992-12-27');
insert into staff (n°_cédula, puesto, nombre, fecha_de_nacimiento) values (10, 'Research Associate', 'Goldie Gemeau', '1981-02-17');
insert into staff (n°_cédula, puesto, nombre, fecha_de_nacimiento) values (11, 'Paralegal', 'Ansell Eastment', '1979-08-04');
insert into staff (n°_cédula, puesto, nombre, fecha_de_nacimiento) values (12, 'Account Executive', 'Christie Verzey', '1978-04-14');
insert into staff (n°_cédula, puesto, nombre, fecha_de_nacimiento) values (13, 'Legal Assistant', 'Gordon Whitlow', '1998-05-28');
insert into staff (n°_cédula, puesto, nombre, fecha_de_nacimiento) values (14, 'Recruiting Manager', 'Carrie Buckthought', '1993-08-22');
insert into staff (n°_cédula, puesto, nombre, fecha_de_nacimiento) values (15, 'Statistician I', 'Reggis Probart', '1983-06-06');
insert into staff (n°_cédula, puesto, nombre, fecha_de_nacimiento) values (16, 'Actuary', 'Jacki Ashness', '1977-11-13');
insert into staff (n°_cédula, puesto, nombre, fecha_de_nacimiento) values (17, 'Payment Adjustment Coordinator', 'Alfreda Yonge', '1985-06-21');
insert into staff (n°_cédula, puesto, nombre, fecha_de_nacimiento) values (18, 'Technical Writer', 'Rollie Clayson', '1978-05-11');
insert into staff (n°_cédula, puesto, nombre, fecha_de_nacimiento) values (19, 'Speech Pathologist', 'Carly Gripton', '1984-08-19');
insert into staff (n°_cédula, puesto, nombre, fecha_de_nacimiento) values (20, 'Payment Adjustment Coordinator', 'Ermanno Sigg', '1998-05-16');
insert into staff (n°_cédula, puesto, nombre, fecha_de_nacimiento) values (21, 'Senior Sales Associate', 'Gris Docksey', '1997-05-21');
insert into staff (n°_cédula, puesto, nombre, fecha_de_nacimiento) values (22, 'Web Designer III', 'Culley Clopton', '1982-05-07');
insert into staff (n°_cédula, puesto, nombre, fecha_de_nacimiento) values (23, 'VP Quality Control', 'Emili Dennison', '1991-05-21');
insert into staff (n°_cédula, puesto, nombre, fecha_de_nacimiento) values (24, 'Payment Adjustment Coordinator', 'Arch Peagram', '1978-06-26');
insert into staff (n°_cédula, puesto, nombre, fecha_de_nacimiento) values (25, 'Geologist IV', 'Junette Povele', '1993-10-05');
insert into staff (n°_cédula, puesto, nombre, fecha_de_nacimiento) values (26, 'Recruiter', 'Kaycee Tackes', '1994-08-25');
insert into staff (n°_cédula, puesto, nombre, fecha_de_nacimiento) values (27, 'Electrical Engineer', 'Enrichetta Nemchinov', '1974-04-07');
insert into staff (n°_cédula, puesto, nombre, fecha_de_nacimiento) values (28, 'Software Consultant', 'Christen Bastock', '1991-01-07');
insert into staff (n°_cédula, puesto, nombre, fecha_de_nacimiento) values (29, 'Payment Adjustment Coordinator', 'Simonette Hanner', '1974-05-25');
insert into staff (n°_cédula, puesto, nombre, fecha_de_nacimiento) values (30, 'Web Developer II', 'Joscelin Lavis', '1983-03-08');
insert into staff (n°_cédula, puesto, nombre, fecha_de_nacimiento) values (31, 'Graphic Designer', 'Cathryn Mouget', '1994-11-26');
insert into staff (n°_cédula, puesto, nombre, fecha_de_nacimiento) values (32, 'Account Representative IV', 'Nollie Francie', '1990-01-14');
insert into staff (n°_cédula, puesto, nombre, fecha_de_nacimiento) values (33, 'Sales Representative', 'Maxine Capener', '1994-02-16');
insert into staff (n°_cédula, puesto, nombre, fecha_de_nacimiento) values (34, 'Assistant Manager', 'Jamal Wyldbore', '1980-04-29');
insert into staff (n°_cédula, puesto, nombre, fecha_de_nacimiento) values (35, 'Internal Auditor', 'Lulita Felstead', '1989-03-05');
insert into staff (n°_cédula, puesto, nombre, fecha_de_nacimiento) values (36, 'Database Administrator II', 'Myrvyn Brind', '2000-08-18');
insert into staff (n°_cédula, puesto, nombre, fecha_de_nacimiento) values (37, 'Research Nurse', 'Dudley Duignan', '1989-07-06');
insert into staff (n°_cédula, puesto, nombre, fecha_de_nacimiento) values (38, 'Web Designer II', 'Nicole Burnup', '1991-06-28');
insert into staff (n°_cédula, puesto, nombre, fecha_de_nacimiento) values (39, 'Marketing Assistant', 'Bertrando Dingivan', '1985-07-22');
insert into staff (n°_cédula, puesto, nombre, fecha_de_nacimiento) values (40, 'Nurse Practicioner', 'Wyatan Reimer', '1985-03-17');
insert into staff (n°_cédula, puesto, nombre, fecha_de_nacimiento) values (41, 'Data Coordinator', 'Terri-jo Kempton', '1974-04-06');
insert into staff (n°_cédula, puesto, nombre, fecha_de_nacimiento) values (42, 'Geological Engineer', 'Latia Brougham', '1979-02-05');
insert into staff (n°_cédula, puesto, nombre, fecha_de_nacimiento) values (43, 'Electrical Engineer', 'Leslie Minerdo', '1981-11-18');
insert into staff (n°_cédula, puesto, nombre, fecha_de_nacimiento) values (44, 'Automation Specialist I', 'Garret Sywell', '1974-02-08');
insert into staff (n°_cédula, puesto, nombre, fecha_de_nacimiento) values (45, 'Senior Developer', 'Prudence Stares', '1974-02-16');
insert into staff (n°_cédula, puesto, nombre, fecha_de_nacimiento) values (46, 'Professor', 'Che Sautter', '1991-05-21');
insert into staff (n°_cédula, puesto, nombre, fecha_de_nacimiento) values (47, 'Statistician I', 'Phylis Domone', '1989-07-17');
insert into staff (n°_cédula, puesto, nombre, fecha_de_nacimiento) values (48, 'VP Accounting', 'Richy Venners', '1980-01-22');
insert into staff (n°_cédula, puesto, nombre, fecha_de_nacimiento) values (49, 'Actuary', 'Daryl Achromov', '1986-08-19');
insert into staff (n°_cédula, puesto, nombre, fecha_de_nacimiento) values (50, 'Cost Accountant', 'Joline Wetherby', '1987-02-22');
insert into staff (n°_cédula, puesto, nombre, fecha_de_nacimiento) values (51, 'Mechanical Systems Engineer', 'Adriano Tuffey', '1978-10-06');
insert into staff (n°_cédula, puesto, nombre, fecha_de_nacimiento) values (52, 'Human Resources Assistant IV', 'Sianna Housin', '1982-08-10');
insert into staff (n°_cédula, puesto, nombre, fecha_de_nacimiento) values (53, 'Geologist IV', 'Yul Gradon', '1974-12-15');
insert into staff (n°_cédula, puesto, nombre, fecha_de_nacimiento) values (54, 'Analyst Programmer', 'Felicity Labarre', '2000-12-28');
insert into staff (n°_cédula, puesto, nombre, fecha_de_nacimiento) values (55, 'Junior Executive', 'Lisha McIvor', '1982-06-28');
insert into staff (n°_cédula, puesto, nombre, fecha_de_nacimiento) values (56, 'Web Developer II', 'Conan Okeshott', '1989-11-20');
insert into staff (n°_cédula, puesto, nombre, fecha_de_nacimiento) values (57, 'Operator', 'Eberto Griffitts', '1992-06-13');
insert into staff (n°_cédula, puesto, nombre, fecha_de_nacimiento) values (58, 'Web Designer II', 'Zebulon O''Rourke', '1989-07-17');
insert into staff (n°_cédula, puesto, nombre, fecha_de_nacimiento) values (59, 'Developer III', 'Anna-maria Roeby', '1981-12-21');
insert into staff (n°_cédula, puesto, nombre, fecha_de_nacimiento) values (60, 'Junior Executive', 'Sashenka Stithe', '1998-10-26');
insert into staff (n°_cédula, puesto, nombre, fecha_de_nacimiento) values (61, 'Accounting Assistant III', 'Catlaina McAllister', '1985-02-07');
insert into staff (n°_cédula, puesto, nombre, fecha_de_nacimiento) values (62, 'Account Representative III', 'Timotheus Trippack', '1996-10-06');
insert into staff (n°_cédula, puesto, nombre, fecha_de_nacimiento) values (63, 'Associate Professor', 'Gavin Gairdner', '1980-03-16');
insert into staff (n°_cédula, puesto, nombre, fecha_de_nacimiento) values (64, 'Payment Adjustment Coordinator', 'Richy Regnard', '1991-11-10');
insert into staff (n°_cédula, puesto, nombre, fecha_de_nacimiento) values (65, 'Occupational Therapist', 'Becki Botright', '1983-12-23');
insert into staff (n°_cédula, puesto, nombre, fecha_de_nacimiento) values (66, 'Senior Editor', 'Elli Stubley', '1987-02-20');
insert into staff (n°_cédula, puesto, nombre, fecha_de_nacimiento) values (67, 'Professor', 'Chrissie Cheake', '1975-10-12');
insert into staff (n°_cédula, puesto, nombre, fecha_de_nacimiento) values (68, 'Structural Engineer', 'Trstram Johann', '1986-09-19');
insert into staff (n°_cédula, puesto, nombre, fecha_de_nacimiento) values (69, 'Biostatistician III', 'Mariya Bleckly', '1995-08-02');
insert into staff (n°_cédula, puesto, nombre, fecha_de_nacimiento) values (70, 'Research Nurse', 'Emmit Feavyour', '1998-05-08');
insert into staff (n°_cédula, puesto, nombre, fecha_de_nacimiento) values (71, 'Research Nurse', 'Phaedra Hatwell', '1990-12-14');
insert into staff (n°_cédula, puesto, nombre, fecha_de_nacimiento) values (72, 'Web Developer I', 'Bruce Mourant', '1980-07-12');
insert into staff (n°_cédula, puesto, nombre, fecha_de_nacimiento) values (73, 'Software Consultant', 'Rabi Ianetti', '1983-03-01');
insert into staff (n°_cédula, puesto, nombre, fecha_de_nacimiento) values (74, 'Analyst Programmer', 'Wernher Pomery', '1986-04-16');
insert into staff (n°_cédula, puesto, nombre, fecha_de_nacimiento) values (75, 'Marketing Assistant', 'Rollin Jellings', '1980-11-22');
insert into staff (n°_cédula, puesto, nombre, fecha_de_nacimiento) values (76, 'Recruiting Manager', 'Brantley Costelloe', '1990-01-24');
insert into staff (n°_cédula, puesto, nombre, fecha_de_nacimiento) values (77, 'Physical Therapy Assistant', 'Felizio Grelka', '2000-12-30');
insert into staff (n°_cédula, puesto, nombre, fecha_de_nacimiento) values (78, 'Chief Design Engineer', 'Wilhelm Bacon', '1979-08-01');
insert into staff (n°_cédula, puesto, nombre, fecha_de_nacimiento) values (79, 'Sales Associate', 'Suzette Ballintime', '1979-10-07');
insert into staff (n°_cédula, puesto, nombre, fecha_de_nacimiento) values (80, 'Web Designer III', 'Sheridan Rashleigh', '1989-09-20');
insert into staff (n°_cédula, puesto, nombre, fecha_de_nacimiento) values (81, 'Financial Advisor', 'Armin Sharpling', '1974-10-14');
insert into staff (n°_cédula, puesto, nombre, fecha_de_nacimiento) values (82, 'Professor', 'Carlen Chewter', '1994-09-26');
insert into staff (n°_cédula, puesto, nombre, fecha_de_nacimiento) values (83, 'Editor', 'Grazia Rawsthorne', '1975-06-17');
insert into staff (n°_cédula, puesto, nombre, fecha_de_nacimiento) values (84, 'Staff Accountant II', 'Lorin Ceschi', '1977-03-26');
insert into staff (n°_cédula, puesto, nombre, fecha_de_nacimiento) values (85, 'Technical Writer', 'King Gladtbach', '1976-11-15');
insert into staff (n°_cédula, puesto, nombre, fecha_de_nacimiento) values (86, 'Software Engineer II', 'Alexia Fawks', '1980-06-02');
insert into staff (n°_cédula, puesto, nombre, fecha_de_nacimiento) values (87, 'Database Administrator III', 'Neill Abrashkov', '1989-09-18');
insert into staff (n°_cédula, puesto, nombre, fecha_de_nacimiento) values (88, 'Physical Therapy Assistant', 'Tallulah Tagg', '1991-09-19');
insert into staff (n°_cédula, puesto, nombre, fecha_de_nacimiento) values (89, 'Recruiter', 'Westley Weldrake', '1998-11-17');
insert into staff (n°_cédula, puesto, nombre, fecha_de_nacimiento) values (90, 'Chemical Engineer', 'Kellby Sarra', '1993-02-23');

insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (1, 'Slideshare', 'Rosemary Gogie', '2003-03-17', 21, 68);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (2, 'Medical Illustration', 'Almire Hebson', '1993-12-02', 30, 18);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (3, 'TSM Administration', 'Lani Letrange', '1992-03-29', 32, 10);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (4, 'BSS', 'Chevalier Dormand', '1984-05-23', 40, 5);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (5, 'PMO set-up', 'Esmeralda Leinthall', '1995-01-21', 29, 15);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (6, 'Hospitality', 'Valida Saleway', '1981-07-08', 43, 72);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (7, 'Organization Skills', 'Quinn Devenny', '2003-12-16', 20, 11);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (8, 'RNA', 'Gertrud Cansfield', '2003-06-14', 21, 33);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (9, 'CFR', 'Pierette MacCaffery', '1997-03-10', 27, 61);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (10, 'Academic Tutoring', 'Mandy Kloser', '1997-10-21', 27, 8);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (11, 'DMZ', 'Sonya Shoobridge', '2001-08-27', 23, 38);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (12, 'DTC', 'Kalindi Toulch', '2006-02-25', 18, 21);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (13, 'Dell KACE', 'Ash Langmuir', '1987-09-12', 37, 23);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (14, 'HPLC', 'Merrili Jedrzejczyk', '1991-11-13', 32, 97);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (15, 'HACCP', 'Hedvige Karlowicz', '1995-05-18', 29, 6);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (16, 'DNS Administration', 'Clarissa Birley', '1983-01-18', 41, 34);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (17, 'CWS', 'Tammy Cornborough', '1992-01-19', 32, 83);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (18, 'Cell Culture', 'Sal Tythe', '1993-06-20', 31, 18);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (19, 'Amazon EBS', 'Amelina Youtead', '1999-06-23', 25, 87);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (20, 'Radiology', 'Bren Detoile', '2004-10-24', 19, 75);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (21, 'Type Rating', 'Natassia Darlow', '1997-10-02', 27, 87);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (22, 'FMS', 'Inger Durrand', '1990-07-14', 34, 29);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (23, 'SMSTS', 'Orrin Grigorio', '1989-06-22', 35, 97);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (24, 'TMAP', 'Drucy Dimont', '1984-06-08', 40, 13);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (25, 'SSCP', 'Abbot Pockey', '1993-11-17', 30, 1);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (26, 'FHA Financing', 'Neda Kunrad', '1993-03-23', 31, 66);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (27, 'IFS', 'Kerri Craft', '2005-09-19', 19, 76);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (28, 'iLife', 'Wallie Bosworth', '1992-01-18', 32, 16);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (29, 'EF', 'Hollyanne Giffkins', '1988-12-23', 35, 31);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (30, 'MDS 3.0', 'Kessiah Bowhey', '1981-06-14', 43, 15);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (31, 'CDM Co-ordinator', 'Carilyn Yitzovitz', '1990-05-17', 34, 58);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (32, 'JBoss ESB', 'Jasmina Trivett', '1980-09-10', 44, 25);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (33, 'Cell', 'Reg Knox', '2004-03-03', 20, 57);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (34, 'DH+', 'Benedetta Cheves', '1991-04-28', 33, 62);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (35, 'Business Valuation', 'Niels Robson', '1997-07-27', 27, 53);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (36, 'Term Life Insurance', 'Vickie Bevan', '1996-08-23', 28, 12);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (37, 'MicroStation', 'Valentin Gouny', '1987-03-04', 37, 86);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (38, 'APO SNP', 'Arlyne Lesmonde', '2000-01-05', 24, 50);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (39, 'LAN Switching', 'Merrick Rounds', '1981-04-24', 43, 29);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (40, 'MDR', 'Spence Leap', '1986-07-30', 38, 45);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (41, 'Quantity Surveying', 'Gayle Barber', '1990-07-08', 34, 38);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (42, 'LPI', 'Stanislaus Medlen', '1985-10-30', 38, 31);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (43, 'Event Management', 'Simone Benasik', '1991-12-30', 32, 80);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (44, 'Art', 'Ofelia Goulbourne', '1999-12-11', 24, 79);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (45, 'Pyrosequencing', 'Karry Sitlinton', '1993-10-30', 30, 44);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (46, 'Trading', 'Odelle Townby', '1982-01-28', 42, 3);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (47, 'IEF', 'Derick Shearn', '2001-08-15', 23, 47);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (48, 'FDDI', 'Johanna Farfull', '1985-11-26', 38, 15);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (49, 'nDo', 'Ranique Adaway', '1995-06-23', 29, 13);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (50, 'CSI', 'Alex McColm', '2006-06-20', 18, 74);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (51, 'CBM', 'Dorree Bourgour', '1986-01-08', 38, 63);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (52, 'Graphics', 'Pattie Harrismith', '1982-07-05', 42, 65);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (53, 'GSA Contracting', 'Carmelita McKinnon', '1996-05-16', 28, 21);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (54, 'Design for Manufacturing', 'Fredrika Amort', '1986-05-26', 38, 45);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (55, 'IM', 'Garrot Quantrill', '2002-07-29', 22, 95);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (56, 'Flooring', 'Melesa Carnachen', '2004-02-02', 20, 66);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (57, 'Mplus', 'Otis Treadgold', '1997-08-06', 27, 20);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (58, 'Glaucoma', 'Zachariah Albinson', '1993-07-29', 31, 82);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (59, 'Oenology', 'Dominick McCurry', '1995-04-14', 29, 3);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (60, 'Knowledge Sharing', 'Stace Lifsey', '1991-01-12', 33, 95);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (61, 'Wine', 'Madel Wonter', '1986-07-22', 38, 58);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (62, 'Vocals', 'Dru Connett', '1986-05-28', 38, 47);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (63, 'UDS', 'Jillayne Dow', '1989-03-15', 35, 35);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (64, 'LN', 'Merl Bowdery', '1984-05-08', 40, 34);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (65, 'SSP', 'Sharla Yule', '1989-08-27', 35, 27);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (66, 'Biomedical Engineering', 'Bradney Colquite', '2004-07-10', 20, 26);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (67, 'Technical Documentation', 'Cletus Banbury', '1985-05-05', 39, 97);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (68, 'Sustainable Tourism', 'Oliviero Keesman', '2004-06-23', 20, 57);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (69, 'Hydraulic Systems', 'Lolita Seif', '1992-10-02', 32, 88);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (70, 'Wound Care', 'Dix Press', '1989-08-14', 35, 23);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (71, 'Kaseya', 'Joby Lapley', '1991-01-06', 33, 71);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (72, 'Gift Baskets', 'Vidovic Atkirk', '1987-07-12', 37, 77);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (73, 'Hydraulics', 'Bobinette Vockins', '2005-01-23', 19, 19);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (74, 'Shopping Centers', 'Luz Tomasoni', '1982-03-19', 42, 77);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (75, 'QALoad', 'Amalee Peltz', '1998-08-03', 26, 42);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (76, 'Furnishings', 'Monti Pfeffle', '2003-08-01', 21, 49);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (77, 'HSM', 'Erminie Strother', '1989-07-23', 35, 6);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (78, 'Zimbra', 'Cleveland Frearson', '2000-12-12', 23, 52);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (79, 'Urban Forestry', 'Burk Joplin', '1994-06-20', 30, 56);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (80, 'xPON', 'Tove Purry', '2003-05-07', 21, 51);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (81, 'JBL', 'Marcia Kalinovich', '1985-07-07', 39, 82);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (82, 'Image Processing', 'Ermentrude Dobeson', '1981-07-05', 43, 73);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (83, 'Zmap', 'Eolanda Szantho', '2005-09-07', 19, 21);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (84, 'Data Modeling', 'Addi Fyall', '1989-06-29', 35, 66);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (85, 'PPBES', 'Charlie Van den Velde', '2002-03-07', 22, 83);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (86, 'Rail', 'Reginauld Woodrooffe', '1996-10-19', 28, 60);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (87, 'global HCM', 'Robinia Peggrem', '2004-07-28', 20, 31);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (88, 'Small Boat Operations', 'Lotta D''Aubney', '1980-06-25', 44, 48);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (89, 'PPAPs', 'Catha Billiard', '1998-10-29', 25, 91);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (90, 'Visual Merchandising', 'Friederike Bernardotte', '1984-04-08', 40, 32);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (91, 'Qt Creator', 'Fayina Dunleavy', '1990-08-12', 34, 34);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (92, 'Solution Selling', 'Berta Archibald', '2003-07-18', 21, 82);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (93, 'AWS CWI', 'Tab Haskur', '1999-07-23', 25, 99);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (94, 'AAR', 'Flory Ilchuk', '1982-12-17', 41, 93);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (95, 'TGA', 'Levey Solomon', '1988-06-18', 36, 84);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (96, 'Online Research', 'Zachariah Sherwood', '2001-12-05', 22, 81);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (97, 'Outlook Express', 'Dilan Fudge', '1982-06-15', 42, 11);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (98, 'CWSP', 'Andrew Lundbech', '1996-08-31', 28, 72);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (99, 'ODIN', 'Dukie Ephson', '1982-11-09', 41, 41);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (100, 'Oil &amp; Gas Industry', 'Renae Peerless', '1999-06-07', 25, 7);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (101, 'Long-term Care', 'James MacLaverty', '1983-03-15', 41, 27);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (102, 'Laboratory', 'Jeniffer Mattsson', '1989-11-20', 34, 50);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (103, 'Kodak', 'Minni MacCaughey', '2000-07-27', 24, 88);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (104, 'Kidney Transplant', 'Amalee Chavey', '1997-03-26', 27, 19);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (105, 'PyGTK', 'Dianne Phalp', '1992-07-12', 32, 62);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (106, 'Historical Research', 'Brynn Couthard', '2001-12-28', 22, 74);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (107, 'Cerner', 'Raynard Morais', '2004-11-28', 19, 73);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (108, 'Occupational Therapists', 'Anallese Hamshaw', '1991-02-01', 33, 70);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (109, 'DHCPv6', 'Augustus Grugerr', '2000-03-20', 24, 41);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (110, 'GML', 'Mick Ludlow', '1989-05-28', 35, 2);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (111, 'Employment Law', 'Roxie Whittet', '1990-10-27', 33, 59);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (112, 'Urban Economics', 'Artair Leaman', '2000-04-16', 24, 35);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (113, 'Zombies', 'Dorothee Yea', '2005-02-21', 19, 41);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (114, 'RDBMS', 'Aigneis Follows', '1998-01-02', 26, 3);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (115, 'Static Timing Analysis', 'Osgood Buckner', '1988-06-19', 36, 7);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (116, 'Multithreading', 'Myrtie Dymock', '1985-04-10', 39, 37);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (117, 'IBM AIX', 'Giselbert Whiley', '2003-01-15', 21, 62);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (118, 'Automotive', 'Magdaia Fettes', '1984-07-29', 40, 22);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (119, 'Emergency Nursing', 'Hughie Durant', '2006-11-17', 17, 6);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (120, 'OTA', 'Tammy Buessen', '1995-05-31', 29, 24);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (121, 'PY', 'Helen-elizabeth Lafflina', '1993-03-28', 31, 80);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (122, 'IGOR Pro', 'Yalonda Husher', '2001-03-14', 23, 64);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (123, 'Dynamic Speaker', 'Cirillo Peres', '2006-06-23', 18, 65);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (124, 'Non-compete Agreements', 'Byran Duffy', '1997-05-13', 27, 19);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (125, 'MC2', 'Zacherie Commusso', '2002-01-04', 22, 73);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (126, 'USDA', 'Cyril Dornin', '1992-07-14', 32, 71);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (127, 'Medicare', 'Therine Kinsey', '1991-10-08', 33, 72);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (128, 'XCAL', 'Sinclair Geard', '1987-01-27', 37, 19);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (129, 'MXP', 'Mareah Aysik', '2002-04-08', 22, 36);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (130, 'Juvenile Justice', 'Derwin McGrane', '1992-05-09', 32, 49);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (131, 'OMA', 'Bradly Earle', '1995-02-21', 29, 5);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (132, 'TTL', 'Carolee Foss', '1983-08-19', 41, 21);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (133, 'Automotive Aftermarket', 'Gelya Haibel', '2000-01-21', 24, 91);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (134, 'Home Equity Lines of Credit', 'Benjy Hadgraft', '2006-06-18', 18, 29);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (135, 'Veterinary Medicine', 'Farris Cormack', '2000-12-01', 23, 50);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (136, 'WFC', 'Maud Camden', '1999-06-25', 25, 94);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (137, 'VO', 'Annissa Hazeldine', '1985-11-19', 38, 54);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (138, 'Basel II', 'Violetta Challinor', '2001-07-28', 23, 68);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (139, 'Android', 'Derril Hammerstone', '1983-09-30', 41, 69);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (140, 'HP Server Hardware', 'Alena Kesby', '1996-10-29', 27, 44);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (141, 'Toad', 'Cointon McReedy', '1992-10-16', 32, 55);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (142, 'uCOS', 'Lindsay Style', '1989-05-15', 35, 77);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (143, 'Workers Compensation', 'Jerrome Gras', '1994-10-14', 30, 2);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (144, 'DC-9', 'Kristopher Langcaster', '1995-04-20', 29, 31);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (145, 'AXI', 'Skell Oake', '1990-07-01', 34, 5);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (146, 'MFR', 'Marji Boast', '2000-11-08', 23, 8);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (147, 'GHP', 'Phineas Prandin', '1985-10-21', 39, 9);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (148, 'Boat', 'Billi Ware', '2003-02-12', 21, 37);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (149, 'SAP MDM', 'Piper Brodeur', '1993-02-15', 31, 5);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (150, 'QALoad', 'Jard Stolze', '1990-04-21', 34, 87);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (151, 'MVNE', 'Wildon Moatt', '1984-07-27', 40, 58);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (152, 'TV News Production', 'Ky Yannikov', '1981-12-15', 42, 96);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (153, 'RFQ Development', 'Edd Sich', '1982-06-23', 42, 87);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (154, 'Home Equity Lines of Credit', 'Karita Readwing', '1982-07-09', 42, 64);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (155, 'SSADM', 'Markos Bezants', '1982-01-31', 42, 89);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (156, 'Corporate Communications', 'Koralle Holberry', '1997-02-17', 27, 19);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (157, 'Eaglesoft', 'Agosto Bagnold', '1982-12-16', 41, 39);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (158, 'Private Piloting', 'Hildy Durant', '2000-06-10', 24, 51);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (159, 'Commercial Litigation', 'Germaine Gartside', '2000-08-11', 24, 80);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (160, 'LMDS', 'Timi Muckersie', '1986-09-03', 38, 24);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (161, 'Guardianship', 'Julietta Sterke', '2000-02-25', 24, 57);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (162, 'OODBMS', 'Brooke Vogl', '1983-11-06', 40, 89);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (163, 'RhinoCAM', 'Lian Beardwood', '1985-11-04', 38, 60);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (164, 'DST', 'Reinold Burchmore', '1981-08-31', 43, 72);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (165, 'Aftersales', 'Kaitlyn Fynn', '1985-10-18', 39, 28);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (166, 'Google Webmaster Tools', 'Antonietta Floodgate', '1981-04-20', 43, 54);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (167, 'FF&amp;E Procurement', 'Dolf Belding', '1990-12-15', 33, 21);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (168, 'JSONP', 'Shaine Oram', '2002-04-04', 22, 80);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (169, 'MRIS', 'Hedda Hilldrop', '1999-01-31', 25, 31);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (170, 'VOD', 'Gusella Rapsey', '1983-06-13', 41, 95);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (171, 'Emergency Nursing', 'Isabelita Rihanek', '1997-05-07', 27, 25);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (172, 'NICET', 'Delmor Broadbere', '1997-09-02', 27, 30);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (173, 'Yeast two-hybrid', 'Cynthea Pohl', '1991-10-22', 33, 33);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (174, 'FFIEC', 'Emmye Fosbraey', '1988-09-20', 36, 23);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (175, 'Zoom', 'Gun Knox', '1982-12-30', 41, 47);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (176, 'BCMS', 'Robinet Calloway', '2002-10-11', 22, 5);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (177, 'MV', 'Bronnie Ramsbottom', '1991-07-21', 33, 69);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (178, 'Menu Development', 'Hewie Yellowley', '1993-04-30', 31, 81);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (179, 'VMD', 'Jermaine Riseborough', '1984-06-14', 40, 33);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (180, 'Affiliate Networks', 'Brunhilde Yoodall', '2004-10-31', 19, 57);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (181, 'IXIA', 'Lydia Mardle', '1986-01-08', 38, 85);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (182, 'Commercial Kitchen Design', 'Lenard Burrel', '1996-01-06', 28, 89);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (183, 'CPE', 'Mendel Mowles', '1999-12-11', 24, 67);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (184, 'SSO', 'Alejoa Hatcliffe', '1993-01-09', 31, 40);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (185, 'Documentation', 'Chick Cross', '2004-12-13', 19, 62);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (186, 'Healthcare Industry', 'Brander Gooday', '1989-01-21', 35, 97);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (187, 'Pianist', 'Jim Cattini', '1991-04-26', 33, 72);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (188, 'Pneumatic Tools', 'Cheslie Verbrugghen', '1990-12-05', 33, 64);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (189, 'Research Ethics', 'Elladine Gowanlock', '1984-07-18', 40, 55);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (190, 'RF Planning', 'Erick Livezley', '1996-11-18', 27, 68);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (191, 'UK Employment Law', 'Elfrida Epgrave', '1988-06-29', 36, 40);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (192, 'OC RDC', 'Rayna Tickel', '1987-06-08', 37, 57);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (193, 'eGain', 'Inger Hartles', '1989-03-15', 35, 39);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (194, 'Sustainable Agriculture', 'Lesli Dring', '1987-09-11', 37, 70);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (195, 'DNA Repair', 'Anthony Garahan', '1995-04-28', 29, 10);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (196, 'UV/Vis', 'Leonid McGinney', '2001-08-26', 23, 22);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (197, 'PQRI', 'Stavros Sergeant', '2001-02-27', 23, 79);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (198, 'Executive Search', 'Mendel Franzonello', '1994-10-01', 30, 21);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (199, 'Major Gift Development', 'Koressa Frobisher', '1999-03-10', 25, 27);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (200, 'RDC', 'Gladi Kiltie', '2002-12-12', 21, 18);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (201, 'BMD', 'Elbertina Beggi', '2002-07-19', 22, 48);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (202, 'CCNP Certified', 'Darrell Martelet', '1991-09-20', 33, 69);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (203, 'GMLAN', 'Marylynne Hachard', '1986-05-16', 38, 61);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (204, 'Human Capital', 'Jefferson Schiementz', '1996-05-05', 28, 87);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (205, 'MicroStation', 'Melony Fessby', '1982-01-20', 42, 40);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (206, 'FTTx', 'Cassy Manueli', '1988-05-22', 36, 6);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (207, 'RFI', 'Emmaline Orrice', '1991-01-09', 33, 11);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (208, 'GxP', 'Tabor Vayne', '2004-06-07', 20, 95);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (209, 'Winning Others Over', 'Lem Hazleton', '1990-10-18', 34, 25);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (210, 'SVM', 'Quent O''Hingerty', '1991-05-18', 33, 24);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (211, 'Events Coordination', 'Lurette Whistance', '2005-12-24', 18, 60);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (212, 'Zinc', 'Florinda Connerly', '2005-05-02', 19, 25);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (213, 'Ozone Therapy', 'Arielle Potes', '1985-12-07', 38, 18);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (214, 'Live Events', 'Jannelle Stronough', '1980-03-26', 44, 57);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (215, 'Patient Safety', 'Ganny Lello', '1988-10-04', 36, 12);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (216, 'SAP-SD', 'Felice Embleton', '1983-04-11', 41, 10);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (217, 'FMVSS', 'Elston Coulsen', '1987-08-14', 37, 29);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (218, 'Dynamic Speaker', 'Tabor Velde', '1993-09-03', 31, 46);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (219, 'SAP OM', 'Salomi Sherston', '1980-05-26', 44, 14);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (220, 'Switchboard', 'Paton Maytum', '1981-02-09', 43, 60);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (221, 'Software Testing Life Cycle', 'Ulrick Foxall', '2001-09-25', 23, 41);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (222, 'RSLinx', 'Cleon Duncombe', '1993-02-07', 31, 36);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (223, 'Management Due Diligence', 'Michel Paynes', '1997-05-05', 27, 94);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (224, 'Constructive Feedback', 'Pam Giannazzi', '2001-08-14', 23, 62);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (225, 'Construction Drawings', 'Jeanna Housden', '1984-02-19', 40, 89);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (226, 'WBEM', 'Ignace Beven', '1987-02-26', 37, 98);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (227, 'UC4', 'Ruby Oxer', '1986-04-05', 38, 66);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (228, 'CCSP', 'Avram Scala', '1992-09-05', 32, 41);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (229, 'Keyboardist', 'Tulley Boram', '1998-06-24', 26, 86);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (230, 'SAP', 'Florri Pinilla', '2004-01-18', 20, 37);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (231, 'Medication Therapy Management', 'Delmer Kenninghan', '1984-03-25', 40, 87);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (232, 'On Location', 'Clarice Queree', '2004-09-12', 20, 81);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (233, 'Executive Administrative Assistance', 'Adams Windas', '1980-12-06', 43, 5);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (234, 'Chamber Music', 'Lolly Fust', '2001-07-20', 23, 29);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (235, 'FBT', 'Devinne Soltan', '2006-03-07', 18, 11);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (236, 'RoboHelp', 'Alaster Giovannacc@i', '1991-08-28', 33, 52);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (237, 'AMSI', 'Urson Heathcoat', '1997-03-18', 27, 60);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (238, 'DNA fingerprinting', 'Steffi Edwinson', '1980-05-15', 44, 43);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (239, 'VPN', 'Alexandro Matyja', '1981-09-25', 43, 37);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (240, 'Data Mining', 'Blake Worgan', '2001-04-01', 23, 89);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (241, 'Budget Oversight', 'Randa Philips', '1992-07-10', 32, 69);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (242, 'MCSD', 'Joyce Slowey', '1988-09-11', 36, 52);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (243, 'HR Consulting', 'Jayme Palke', '1999-08-29', 25, 98);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (244, 'PVD', 'Peder Clinnick', '1985-12-05', 38, 77);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (245, 'Website Development', 'Petey Linning', '2001-10-25', 22, 40);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (246, 'HR Solutions', 'Lorenzo Kynsey', '2002-03-29', 22, 42);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (247, 'Ultipro', 'Eugine Aicheson', '2002-05-09', 22, 32);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (248, 'Glamour', 'Gussie Kilbourne', '1991-03-02', 33, 2);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (249, 'Gas', 'Darbee Zelland', '2003-08-28', 21, 81);
insert into jugador (n°_cédula, puesto, nombre, fecha_de_nacimiento, edad, dorsal) values (250, 'Brand Development', 'Krispin Chivers', '1984-11-09', 39, 95);

insert into sede (id_sede, nombre_sede, capacidad, ubicación) values (1, 'Aumo', 16648, '1853 Anderson Street');
insert into sede (id_sede, nombre_sede, capacidad, ubicación) values (2, 'San Luis Río Colorado', 17095, '18 Burrows Alley');
insert into sede (id_sede, nombre_sede, capacidad, ubicación) values (3, 'Omnilife', 24111, '0122 Heffernan Trail');
insert into sede (id_sede, nombre_sede, capacidad, ubicación) values (4, 'Panama City', 79281, '469 Dottie Pass');
insert into sede (id_sede, nombre_sede, capacidad, ubicación) values (5, 'Gerald''s Park', 63533, '1619 Brickson Park Street');
insert into sede (id_sede, nombre_sede, capacidad, ubicación) values (6, 'Bundi', 29542, '2 Swallow Plaza');
insert into sede (id_sede, nombre_sede, capacidad, ubicación) values (7, 'Great Falls', 46001, '38 Summerview Point');
insert into sede (id_sede, nombre_sede, capacidad, ubicación) values (8, 'Île des Pins', 77689, '86 Huxley Center');
insert into sede (id_sede, nombre_sede, capacidad, ubicación) values (9, 'Upiara', 36720, '0 Village Green Lane');
insert into sede (id_sede, nombre_sede, capacidad, ubicación) values (10, 'Bettles', 83304, '6 Lakewood Gardens Parkway');
insert into sede (id_sede, nombre_sede, capacidad, ubicación) values (11, 'Handan', 38791, '98 Manitowish Street');
insert into sede (id_sede, nombre_sede, capacidad, ubicación) values (12, 'Frankfurt am Main', 55377, '1762 Dottie Plaza');
insert into sede (id_sede, nombre_sede, capacidad, ubicación) values (13, 'Yorkton', 63570, '969 Atwood Street');
insert into sede (id_sede, nombre_sede, capacidad, ubicación) values (14, 'Cijulang', 54428, '3219 Hollow Ridge Circle');
insert into sede (id_sede, nombre_sede, capacidad, ubicación) values (15, 'Tarapacá', 25412, '6 Carberry Plaza');
insert into sede (id_sede, nombre_sede, capacidad, ubicación) values (16, 'Napperby', 34871, '453 Grayhawk Plaza');
insert into sede (id_sede, nombre_sede, capacidad, ubicación) values (17, 'Wabag', 55656, '1 Hansons Way');
insert into sede (id_sede, nombre_sede, capacidad, ubicación) values (18, 'Upiara', 46532, '8 Comanche Road');
insert into sede (id_sede, nombre_sede, capacidad, ubicación) values (19, 'Calbayog City', 21457, '8091 Division Junction');
insert into sede (id_sede, nombre_sede, capacidad, ubicación) values (20, 'Linga Linga', 42560, '00 Sunnyside Pass');

insert into partido (id_partido, fecha) values (1, '2024-03-22');
insert into partido (id_partido, fecha) values (2, '2024-05-30');
insert into partido (id_partido, fecha) values (3, '2024-04-27');
insert into partido (id_partido, fecha) values (4, '2024-01-08');
insert into partido (id_partido, fecha) values (5, '2024-02-27');
insert into partido (id_partido, fecha) values (6, '2024-05-09');
insert into partido (id_partido, fecha) values (7, '2024-02-16');
insert into partido (id_partido, fecha) values (8, '2024-01-29');
insert into partido (id_partido, fecha) values (9, '2024-04-02');
insert into partido (id_partido, fecha) values (10, '2024-03-09');
insert into partido (id_partido, fecha) values (11, '2024-06-17');
insert into partido (id_partido, fecha) values (12, '2024-06-04');
insert into partido (id_partido, fecha) values (13, '2024-03-22');
insert into partido (id_partido, fecha) values (14, '2024-05-27');
insert into partido (id_partido, fecha) values (15, '2024-02-08');
insert into partido (id_partido, fecha) values (16, '2024-03-12');
insert into partido (id_partido, fecha) values (17, '2024-05-22');
insert into partido (id_partido, fecha) values (18, '2024-05-06');
insert into partido (id_partido, fecha) values (19, '2024-06-17');
insert into partido (id_partido, fecha) values (20, '2024-03-20');
insert into partido (id_partido, fecha) values (21, '2024-02-19');
insert into partido (id_partido, fecha) values (22, '2024-04-09');
insert into partido (id_partido, fecha) values (23, '2024-01-16');
insert into partido (id_partido, fecha) values (24, '2024-03-25');
insert into partido (id_partido, fecha) values (25, '2024-01-16');
insert into partido (id_partido, fecha) values (26, '2024-04-10');
insert into partido (id_partido, fecha) values (27, '2024-05-19');
insert into partido (id_partido, fecha) values (28, '2024-02-01');
insert into partido (id_partido, fecha) values (29, '2024-01-03');
insert into partido (id_partido, fecha) values (30, '2024-06-05');
insert into partido (id_partido, fecha) values (31, '2024-01-02');
insert into partido (id_partido, fecha) values (32, '2024-06-05');
insert into partido (id_partido, fecha) values (33, '2024-03-28');
insert into partido (id_partido, fecha) values (34, '2024-01-04');
insert into partido (id_partido, fecha) values (35, '2024-03-03');
insert into partido (id_partido, fecha) values (36, '2024-05-26');
insert into partido (id_partido, fecha) values (37, '2024-05-22');
insert into partido (id_partido, fecha) values (38, '2024-01-01');
insert into partido (id_partido, fecha) values (39, '2024-01-07');
insert into partido (id_partido, fecha) values (40, '2024-01-18');
insert into partido (id_partido, fecha) values (41, '2024-06-14');
insert into partido (id_partido, fecha) values (42, '2024-04-17');
insert into partido (id_partido, fecha) values (43, '2024-05-16');
insert into partido (id_partido, fecha) values (44, '2024-06-09');
insert into partido (id_partido, fecha) values (45, '2024-01-22');
insert into partido (id_partido, fecha) values (46, '2024-03-25');
insert into partido (id_partido, fecha) values (47, '2024-05-15');
insert into partido (id_partido, fecha) values (48, '2024-05-28');
insert into partido (id_partido, fecha) values (49, '2024-04-07');
insert into partido (id_partido, fecha) values (50, '2024-02-21');
insert into partido (id_partido, fecha) values (51, '2024-04-12');
insert into partido (id_partido, fecha) values (52, '2024-03-23');
insert into partido (id_partido, fecha) values (53, '2024-01-22');
insert into partido (id_partido, fecha) values (54, '2024-03-31');
insert into partido (id_partido, fecha) values (55, '2024-02-13');
insert into partido (id_partido, fecha) values (56, '2024-05-28');
insert into partido (id_partido, fecha) values (57, '2024-04-19');
insert into partido (id_partido, fecha) values (58, '2024-01-18');
insert into partido (id_partido, fecha) values (59, '2024-03-04');
insert into partido (id_partido, fecha) values (60, '2024-02-15');
insert into partido (id_partido, fecha) values (61, '2024-05-06');
insert into partido (id_partido, fecha) values (62, '2024-04-04');
insert into partido (id_partido, fecha) values (63, '2024-05-20');
insert into partido (id_partido, fecha) values (64, '2024-05-02');
insert into partido (id_partido, fecha) values (65, '2024-03-17');
insert into partido (id_partido, fecha) values (66, '2024-05-01');
insert into partido (id_partido, fecha) values (67, '2024-04-08');
insert into partido (id_partido, fecha) values (68, '2024-04-08');
insert into partido (id_partido, fecha) values (69, '2024-06-01');
insert into partido (id_partido, fecha) values (70, '2024-04-28');
insert into partido (id_partido, fecha) values (71, '2024-03-01');
insert into partido (id_partido, fecha) values (72, '2024-03-22');
insert into partido (id_partido, fecha) values (73, '2024-04-09');
insert into partido (id_partido, fecha) values (74, '2024-05-31');
insert into partido (id_partido, fecha) values (75, '2024-05-11');
insert into partido (id_partido, fecha) values (76, '2024-02-20');
insert into partido (id_partido, fecha) values (77, '2024-05-22');
insert into partido (id_partido, fecha) values (78, '2024-02-20');
insert into partido (id_partido, fecha) values (79, '2024-02-23');
insert into partido (id_partido, fecha) values (80, '2024-04-24');
insert into partido (id_partido, fecha) values (81, '2024-03-13');
insert into partido (id_partido, fecha) values (82, '2024-04-23');
insert into partido (id_partido, fecha) values (83, '2024-04-01');
insert into partido (id_partido, fecha) values (84, '2024-03-30');
insert into partido (id_partido, fecha) values (85, '2024-05-15');
insert into partido (id_partido, fecha) values (86, '2024-06-05');
insert into partido (id_partido, fecha) values (87, '2024-05-11');
insert into partido (id_partido, fecha) values (88, '2024-03-28');
insert into partido (id_partido, fecha) values (89, '2024-01-04');
insert into partido (id_partido, fecha) values (90, '2024-03-05');
insert into partido (id_partido, fecha) values (91, '2024-06-19');
insert into partido (id_partido, fecha) values (92, '2024-01-07');
insert into partido (id_partido, fecha) values (93, '2024-02-07');
insert into partido (id_partido, fecha) values (94, '2024-01-12');
insert into partido (id_partido, fecha) values (95, '2024-02-27');
insert into partido (id_partido, fecha) values (96, '2024-05-29');
insert into partido (id_partido, fecha) values (97, '2024-06-04');
insert into partido (id_partido, fecha) values (98, '2024-06-07');
insert into partido (id_partido, fecha) values (99, '2024-03-01');
insert into partido (id_partido, fecha) values (100, '2024-01-06');

insert into posee (registro, dueño, equipo) values (1, 1, 7);
insert into posee (registro, dueño, equipo) values (2, 2, 10);
insert into posee (registro, dueño, equipo) values (3, 3, 2);
insert into posee (registro, dueño, equipo) values (4, 4, 16);
insert into posee (registro, dueño, equipo) values (5, 5, 6);
insert into posee (registro, dueño, equipo) values (6, 6, 16);
insert into posee (registro, dueño, equipo) values (7, 7, 12);
insert into posee (registro, dueño, equipo) values (8, 8, 13);
insert into posee (registro, dueño, equipo) values (9, 9, 8);
insert into posee (registro, dueño, equipo) values (10, 10, 1);
insert into posee (registro, dueño, equipo) values (11, 11, 9);
insert into posee (registro, dueño, equipo) values (12, 12, 9);
insert into posee (registro, dueño, equipo) values (13, 13, 8);
insert into posee (registro, dueño, equipo) values (14, 14, 2);
insert into posee (registro, dueño, equipo) values (15, 15, 17);
insert into posee (registro, dueño, equipo) values (16, 16, 12);
insert into posee (registro, dueño, equipo) values (17, 17, 6);
insert into posee (registro, dueño, equipo) values (18, 18, 1);
insert into posee (registro, dueño, equipo) values (19, 19, 13);
insert into posee (registro, dueño, equipo) values (20, 20, 17);
insert into posee (registro, dueño, equipo) values (21, 21, 18);
insert into posee (registro, dueño, equipo) values (22, 22, 9);
insert into posee (registro, dueño, equipo) values (23, 23, 8);
insert into posee (registro, dueño, equipo) values (24, 24, 13);
insert into posee (registro, dueño, equipo) values (25, 25, 18);
insert into posee (registro, dueño, equipo) values (26, 26, 1);
insert into posee (registro, dueño, equipo) values (27, 27, 4);
insert into posee (registro, dueño, equipo) values (28, 28, 3);
insert into posee (registro, dueño, equipo) values (29, 29, 1);
insert into posee (registro, dueño, equipo) values (30, 30, 14);

insert into patrocina (pago, id_patrocinador, equipo) values ('n/a', 1, 5);
insert into patrocina (pago, id_patrocinador, equipo) values ('$3.73B', 2, 16);
insert into patrocina (pago, id_patrocinador, equipo) values ('$1.14B', 3, 14);
insert into patrocina (pago, id_patrocinador, equipo) values ('$803.43M', 4, 11);
insert into patrocina (pago, id_patrocinador, equipo) values ('$6.28B', 5, 5);
insert into patrocina (pago, id_patrocinador, equipo) values ('n/a', 6, 1);
insert into patrocina (pago, id_patrocinador, equipo) values ('$686.2M', 7, 17);
insert into patrocina (pago, id_patrocinador, equipo) values ('$324.79M', 8, 3);
insert into patrocina (pago, id_patrocinador, equipo) values ('$25.85M', 9, 13);
insert into patrocina (pago, id_patrocinador, equipo) values ('$58.13M', 10, 18);
insert into patrocina (pago, id_patrocinador, equipo) values ('$208.41M', 11, 18);
insert into patrocina (pago, id_patrocinador, equipo) values ('$29.24B', 12, 5);
insert into patrocina (pago, id_patrocinador, equipo) values ('n/a', 13, 6);
insert into patrocina (pago, id_patrocinador, equipo) values ('$13.92B', 14, 13);
insert into patrocina (pago, id_patrocinador, equipo) values ('$568.57M', 15, 10);
insert into patrocina (pago, id_patrocinador, equipo) values ('$193.67M', 16, 15);
insert into patrocina (pago, id_patrocinador, equipo) values ('$23.97M', 17, 13);
insert into patrocina (pago, id_patrocinador, equipo) values ('$19.65M', 18, 16);
insert into patrocina (pago, id_patrocinador, equipo) values ('$4.27B', 19, 10);
insert into patrocina (pago, id_patrocinador, equipo) values ('$483.46M', 20, 17);
insert into patrocina (pago, id_patrocinador, equipo) values ('$5.85B', 21, 3);
insert into patrocina (pago, id_patrocinador, equipo) values ('n/a', 22, 5);
insert into patrocina (pago, id_patrocinador, equipo) values ('$1.88B', 23, 9);
insert into patrocina (pago, id_patrocinador, equipo) values ('$1.03B', 24, 5);
insert into patrocina (pago, id_patrocinador, equipo) values ('$165.72M', 25, 13);

insert into contrato (id_contrato, duración, sueldo, equipo, id_staff) values (1, 2, '$597745.04', 7, 1);
insert into contrato (id_contrato, duración, sueldo, equipo, id_staff) values (2, 2, '$667824.32', 5, 2);
insert into contrato (id_contrato, duración, sueldo, equipo, id_staff) values (3, 5, '$843776.31', 13, 3);
insert into contrato (id_contrato, duración, sueldo, equipo, id_staff) values (4, 3, '$922686.59', 11, 4);
insert into contrato (id_contrato, duración, sueldo, equipo, id_staff) values (5, 4, '$986841.39', 8, 5);
insert into contrato (id_contrato, duración, sueldo, equipo, id_staff) values (6, 1, '$106529.47', 16, 6);
insert into contrato (id_contrato, duración, sueldo, equipo, id_staff) values (7, 5, '$847619.27', 5, 7);
insert into contrato (id_contrato, duración, sueldo, equipo, id_staff) values (8, 1, '$220561.71', 7, 8);
insert into contrato (id_contrato, duración, sueldo, equipo, id_staff) values (9, 1, '$437180.43', 14, 9);
insert into contrato (id_contrato, duración, sueldo, equipo, id_staff) values (10, 4, '$534795.04', 4, 10);
insert into contrato (id_contrato, duración, sueldo, equipo, id_staff) values (11, 5, '$389369.79', 5, 11);
insert into contrato (id_contrato, duración, sueldo, equipo, id_staff) values (12, 1, '$207006.69', 18, 12);
insert into contrato (id_contrato, duración, sueldo, equipo, id_staff) values (13, 1, '$175816.64', 6, 13);
insert into contrato (id_contrato, duración, sueldo, equipo, id_staff) values (14, 2, '$265783.03', 16, 14);
insert into contrato (id_contrato, duración, sueldo, equipo, id_staff) values (15, 3, '$301712.73', 9, 15);
insert into contrato (id_contrato, duración, sueldo, equipo, id_staff) values (16, 1, '$642449.78', 3, 16);
insert into contrato (id_contrato, duración, sueldo, equipo, id_staff) values (17, 2, '$404063.23', 14, 17);
insert into contrato (id_contrato, duración, sueldo, equipo, id_staff) values (18, 5, '$148075.42', 15, 18);
insert into contrato (id_contrato, duración, sueldo, equipo, id_staff) values (19, 2, '$258024.05', 10, 19);
insert into contrato (id_contrato, duración, sueldo, equipo, id_staff) values (20, 1, '$793351.19', 1, 20);
insert into contrato (id_contrato, duración, sueldo, equipo, id_staff) values (21, 1, '$972582.22', 6, 21);
insert into contrato (id_contrato, duración, sueldo, equipo, id_staff) values (22, 5, '$430154.16', 15, 22);
insert into contrato (id_contrato, duración, sueldo, equipo, id_staff) values (23, 3, '$71666.81', 9, 23);
insert into contrato (id_contrato, duración, sueldo, equipo, id_staff) values (24, 1, '$689662.88', 10, 24);
insert into contrato (id_contrato, duración, sueldo, equipo, id_staff) values (25, 1, '$748311.21', 12, 25);
insert into contrato (id_contrato, duración, sueldo, equipo, id_staff) values (26, 5, '$778371.26', 16, 26);
insert into contrato (id_contrato, duración, sueldo, equipo, id_staff) values (27, 2, '$976193.97', 1, 27);
insert into contrato (id_contrato, duración, sueldo, equipo, id_staff) values (28, 2, '$121060.04', 13, 28);
insert into contrato (id_contrato, duración, sueldo, equipo, id_staff) values (29, 4, '$322991.39', 13, 29);
insert into contrato (id_contrato, duración, sueldo, equipo, id_staff) values (30, 5, '$494407.49', 14, 30);
insert into contrato (id_contrato, duración, sueldo, equipo, id_staff) values (31, 1, '$890715.35', 3, 31);
insert into contrato (id_contrato, duración, sueldo, equipo, id_staff) values (32, 4, '$194557.27', 9, 32);
insert into contrato (id_contrato, duración, sueldo, equipo, id_staff) values (33, 1, '$146944.10', 6, 33);
insert into contrato (id_contrato, duración, sueldo, equipo, id_staff) values (34, 1, '$882010.92', 1, 34);
insert into contrato (id_contrato, duración, sueldo, equipo, id_staff) values (35, 2, '$742617.13', 5, 35);
insert into contrato (id_contrato, duración, sueldo, equipo, id_staff) values (36, 4, '$329856.15', 18, 36);
insert into contrato (id_contrato, duración, sueldo, equipo, id_staff) values (37, 5, '$79083.16', 7, 37);
insert into contrato (id_contrato, duración, sueldo, equipo, id_staff) values (38, 4, '$379200.52', 5, 38);
insert into contrato (id_contrato, duración, sueldo, equipo, id_staff) values (39, 5, '$653131.54', 15, 39);
insert into contrato (id_contrato, duración, sueldo, equipo, id_staff) values (40, 3, '$495503.54', 4, 40);
insert into contrato (id_contrato, duración, sueldo, equipo, id_staff) values (41, 3, '$375903.00', 11, 41);
insert into contrato (id_contrato, duración, sueldo, equipo, id_staff) values (42, 5, '$412446.94', 9, 42);
insert into contrato (id_contrato, duración, sueldo, equipo, id_staff) values (43, 2, '$71289.30', 4, 43);
insert into contrato (id_contrato, duración, sueldo, equipo, id_staff) values (44, 3, '$755895.09', 14, 44);
insert into contrato (id_contrato, duración, sueldo, equipo, id_staff) values (45, 3, '$412766.11', 3, 45);
insert into contrato (id_contrato, duración, sueldo, equipo, id_staff) values (46, 3, '$888051.45', 11, 46);
insert into contrato (id_contrato, duración, sueldo, equipo, id_staff) values (47, 4, '$240283.68', 13, 47);
insert into contrato (id_contrato, duración, sueldo, equipo, id_staff) values (48, 5, '$355149.03', 14, 48);
insert into contrato (id_contrato, duración, sueldo, equipo, id_staff) values (49, 5, '$517637.52', 12, 49);
insert into contrato (id_contrato, duración, sueldo, equipo, id_staff) values (50, 3, '$601431.55', 17, 50);
insert into contrato (id_contrato, duración, sueldo, equipo, id_staff) values (51, 3, '$117918.23', 9, 51);
insert into contrato (id_contrato, duración, sueldo, equipo, id_staff) values (52, 5, '$942608.55', 18, 52);
insert into contrato (id_contrato, duración, sueldo, equipo, id_staff) values (53, 1, '$747843.33', 2, 53);
insert into contrato (id_contrato, duración, sueldo, equipo, id_staff) values (54, 3, '$742322.33', 17, 54);
insert into contrato (id_contrato, duración, sueldo, equipo, id_staff) values (55, 2, '$202546.60', 1, 55);
insert into contrato (id_contrato, duración, sueldo, equipo, id_staff) values (56, 3, '$80293.03', 6, 56);
insert into contrato (id_contrato, duración, sueldo, equipo, id_staff) values (57, 5, '$39268.70', 9, 57);
insert into contrato (id_contrato, duración, sueldo, equipo, id_staff) values (58, 2, '$316351.32', 3, 58);
insert into contrato (id_contrato, duración, sueldo, equipo, id_staff) values (59, 3, '$554924.14', 13, 59);
insert into contrato (id_contrato, duración, sueldo, equipo, id_staff) values (60, 3, '$215966.07', 12, 60);
insert into contrato (id_contrato, duración, sueldo, equipo, id_staff) values (61, 1, '$461420.63', 12, 61);
insert into contrato (id_contrato, duración, sueldo, equipo, id_staff) values (62, 3, '$102543.60', 18, 62);
insert into contrato (id_contrato, duración, sueldo, equipo, id_staff) values (63, 2, '$398937.72', 11, 63);
insert into contrato (id_contrato, duración, sueldo, equipo, id_staff) values (64, 5, '$379652.90', 15, 64);
insert into contrato (id_contrato, duración, sueldo, equipo, id_staff) values (65, 4, '$461893.04', 11, 65);
insert into contrato (id_contrato, duración, sueldo, equipo, id_staff) values (66, 2, '$62060.77', 7, 66);
insert into contrato (id_contrato, duración, sueldo, equipo, id_staff) values (67, 2, '$5219.00', 4, 67);
insert into contrato (id_contrato, duración, sueldo, equipo, id_staff) values (68, 5, '$337028.17', 10, 68);
insert into contrato (id_contrato, duración, sueldo, equipo, id_staff) values (69, 1, '$637186.43', 12, 69);
insert into contrato (id_contrato, duración, sueldo, equipo, id_staff) values (70, 5, '$963499.51', 12, 70);
insert into contrato (id_contrato, duración, sueldo, equipo, id_staff) values (71, 4, '$812845.93', 8, 71);
insert into contrato (id_contrato, duración, sueldo, equipo, id_staff) values (72, 1, '$230343.13', 4, 72);
insert into contrato (id_contrato, duración, sueldo, equipo, id_staff) values (73, 3, '$593430.34', 14, 73);
insert into contrato (id_contrato, duración, sueldo, equipo, id_staff) values (74, 4, '$745956.81', 10, 74);
insert into contrato (id_contrato, duración, sueldo, equipo, id_staff) values (75, 1, '$801784.29', 2, 75);
insert into contrato (id_contrato, duración, sueldo, equipo, id_staff) values (76, 4, '$621936.22', 7, 76);
insert into contrato (id_contrato, duración, sueldo, equipo, id_staff) values (77, 1, '$893319.36', 14, 77);
insert into contrato (id_contrato, duración, sueldo, equipo, id_staff) values (78, 2, '$573460.64', 15, 78);
insert into contrato (id_contrato, duración, sueldo, equipo, id_staff) values (79, 4, '$703757.89', 17, 79);
insert into contrato (id_contrato, duración, sueldo, equipo, id_staff) values (80, 5, '$955368.77', 11, 80);
insert into contrato (id_contrato, duración, sueldo, equipo, id_staff) values (81, 4, '$338817.82', 14, 81);
insert into contrato (id_contrato, duración, sueldo, equipo, id_staff) values (82, 3, '$295419.15', 5, 82);
insert into contrato (id_contrato, duración, sueldo, equipo, id_staff) values (83, 5, '$891913.42', 9, 83);
insert into contrato (id_contrato, duración, sueldo, equipo, id_staff) values (84, 3, '$681623.73', 13, 84);
insert into contrato (id_contrato, duración, sueldo, equipo, id_staff) values (85, 2, '$483402.87', 15, 85);
insert into contrato (id_contrato, duración, sueldo, equipo, id_staff) values (86, 3, '$536021.01', 13, 86);
insert into contrato (id_contrato, duración, sueldo, equipo, id_staff) values (87, 1, '$689759.28', 4, 87);
insert into contrato (id_contrato, duración, sueldo, equipo, id_staff) values (88, 1, '$364185.68', 4, 88);
insert into contrato (id_contrato, duración, sueldo, equipo, id_staff) values (89, 1, '$189472.68', 6, 89);
insert into contrato (id_contrato, duración, sueldo, equipo, id_staff) values (90, 3, '$617617.92', 13, 90);

insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (1, 3, '$106297.68', 11, 1);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (2, 5, '$788892.32', 6, 2);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (3, 3, '$175180.97', 16, 3);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (4, 4, '$602316.40', 3, 4);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (5, 2, '$592154.50', 8, 5);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (6, 4, '$376020.02', 16, 6);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (7, 1, '$470744.04', 6, 7);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (8, 4, '$923769.60', 4, 8);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (9, 4, '$915518.10', 15, 9);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (10, 5, '$989431.91', 1, 10);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (11, 1, '$558044.51', 10, 11);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (12, 2, '$656338.11', 7, 12);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (13, 2, '$820905.33', 5, 13);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (14, 1, '$405914.55', 5, 14);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (15, 4, '$743101.08', 1, 15);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (16, 4, '$946181.17', 9, 16);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (17, 3, '$344381.71', 2, 17);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (18, 2, '$757991.02', 15, 18);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (19, 2, '$838539.82', 3, 19);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (20, 5, '$990532.29', 15, 20);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (21, 4, '$327294.83', 10, 21);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (22, 2, '$220294.28', 12, 22);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (23, 4, '$775401.69', 5, 23);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (24, 2, '$203529.26', 7, 24);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (25, 1, '$301032.10', 3, 25);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (26, 2, '$256126.68', 5, 26);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (27, 3, '$765548.25', 17, 27);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (28, 3, '$433102.16', 10, 28);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (29, 5, '$185398.03', 4, 29);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (30, 2, '$813345.61', 16, 30);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (31, 4, '$425810.03', 14, 31);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (32, 5, '$190661.03', 12, 32);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (33, 5, '$266105.22', 4, 33);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (34, 1, '$137394.36', 15, 34);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (35, 5, '$708439.61', 15, 35);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (36, 4, '$221191.88', 3, 36);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (37, 5, '$285249.05', 12, 37);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (38, 3, '$509503.21', 11, 38);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (39, 3, '$802198.88', 16, 39);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (40, 2, '$912168.64', 14, 40);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (41, 1, '$789119.46', 10, 41);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (42, 3, '$18801.08', 14, 42);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (43, 4, '$424815.14', 8, 43);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (44, 1, '$835824.74', 5, 44);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (45, 5, '$750761.05', 11, 45);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (46, 3, '$662869.47', 3, 46);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (47, 2, '$490611.07', 4, 47);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (48, 4, '$206973.40', 16, 48);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (49, 4, '$209316.54', 18, 49);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (50, 3, '$77048.34', 1, 50);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (51, 1, '$6643.15', 17, 51);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (52, 3, '$491253.02', 4, 52);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (53, 2, '$998331.60', 9, 53);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (54, 2, '$452024.95', 2, 54);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (55, 1, '$342757.01', 13, 55);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (56, 4, '$482511.44', 5, 56);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (57, 1, '$360560.59', 5, 57);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (58, 3, '$273991.03', 10, 58);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (59, 4, '$11875.24', 8, 59);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (60, 3, '$619439.60', 2, 60);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (61, 4, '$710664.26', 14, 61);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (62, 3, '$577466.77', 18, 62);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (63, 1, '$588843.38', 4, 63);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (64, 1, '$744593.38', 7, 64);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (65, 4, '$720231.92', 3, 65);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (66, 1, '$935619.68', 4, 66);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (67, 4, '$128690.85', 8, 67);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (68, 3, '$546824.42', 1, 68);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (69, 5, '$246025.26', 6, 69);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (70, 2, '$33969.33', 1, 70);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (71, 2, '$626865.09', 11, 71);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (72, 4, '$938790.54', 12, 72);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (73, 2, '$14657.63', 11, 73);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (74, 1, '$667753.44', 2, 74);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (75, 4, '$229792.01', 6, 75);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (76, 1, '$343992.05', 6, 76);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (77, 2, '$874727.15', 14, 77);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (78, 1, '$275288.40', 1, 78);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (79, 2, '$96018.56', 10, 79);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (80, 3, '$21686.72', 14, 80);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (81, 1, '$388646.35', 4, 81);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (82, 5, '$942994.38', 17, 82);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (83, 4, '$856962.07', 10, 83);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (84, 4, '$562690.73', 18, 84);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (85, 2, '$324582.38', 16, 85);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (86, 5, '$232792.02', 4, 86);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (87, 5, '$6194.63', 4, 87);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (88, 4, '$221628.27', 9, 88);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (89, 5, '$557451.67', 6, 89);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (90, 1, '$317919.61', 14, 90);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (91, 5, '$375261.96', 5, 91);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (92, 4, '$486371.44', 3, 92);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (93, 2, '$372604.43', 7, 93);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (94, 4, '$174403.82', 9, 94);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (95, 5, '$57893.01', 11, 95);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (96, 2, '$497079.52', 16, 96);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (97, 3, '$496305.60', 10, 97);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (98, 2, '$860370.84', 16, 98);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (99, 5, '$381452.44', 16, 99);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (100, 5, '$350160.41', 5, 100);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (101, 5, '$270248.32', 5, 101);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (102, 1, '$412230.04', 1, 102);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (103, 1, '$204910.45', 6, 103);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (104, 2, '$649434.69', 11, 104);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (105, 5, '$917522.38', 10, 105);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (106, 2, '$398353.03', 6, 106);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (107, 4, '$224602.66', 15, 107);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (108, 4, '$53296.83', 10, 108);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (109, 5, '$883959.04', 13, 109);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (110, 4, '$679699.46', 8, 110);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (111, 3, '$708931.91', 8, 111);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (112, 5, '$863494.77', 14, 112);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (113, 2, '$596853.42', 17, 113);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (114, 1, '$238792.86', 13, 114);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (115, 5, '$179396.06', 5, 115);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (116, 2, '$182450.61', 1, 116);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (117, 1, '$427659.17', 5, 117);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (118, 2, '$171564.06', 9, 118);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (119, 4, '$525541.10', 18, 119);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (120, 2, '$728945.07', 15, 120);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (121, 3, '$851428.69', 11, 121);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (122, 2, '$929701.08', 4, 122);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (123, 4, '$134998.43', 8, 123);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (124, 3, '$849088.70', 10, 124);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (125, 2, '$284273.93', 15, 125);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (126, 2, '$604875.64', 9, 126);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (127, 2, '$38489.91', 5, 127);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (128, 3, '$538113.75', 4, 128);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (129, 5, '$285938.29', 4, 129);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (130, 3, '$779762.07', 10, 130);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (131, 1, '$832759.17', 1, 131);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (132, 3, '$568021.76', 7, 132);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (133, 1, '$171348.54', 14, 133);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (134, 3, '$424013.03', 17, 134);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (135, 5, '$281659.62', 2, 135);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (136, 4, '$802885.29', 13, 136);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (137, 5, '$644645.40', 13, 137);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (138, 1, '$454053.93', 4, 138);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (139, 2, '$633594.57', 12, 139);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (140, 4, '$212093.31', 9, 140);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (141, 1, '$985509.67', 2, 141);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (142, 1, '$242426.12', 14, 142);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (143, 1, '$733735.29', 15, 143);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (144, 3, '$746571.54', 12, 144);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (145, 1, '$731387.57', 9, 145);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (146, 4, '$413403.47', 16, 146);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (147, 3, '$53737.25', 6, 147);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (148, 2, '$507842.26', 1, 148);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (149, 4, '$343527.04', 4, 149);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (150, 2, '$623061.06', 2, 150);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (151, 1, '$401533.06', 9, 151);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (152, 1, '$246278.76', 10, 152);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (153, 4, '$878087.49', 4, 153);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (154, 4, '$733864.38', 16, 154);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (155, 4, '$562715.35', 16, 155);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (156, 5, '$243815.95', 18, 156);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (157, 4, '$602253.56', 6, 157);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (158, 3, '$264778.29', 4, 158);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (159, 2, '$454553.05', 15, 159);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (160, 5, '$427197.69', 6, 160);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (161, 3, '$785615.57', 14, 161);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (162, 1, '$305205.89', 11, 162);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (163, 2, '$887861.04', 11, 163);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (164, 4, '$527319.41', 15, 164);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (165, 1, '$158455.47', 7, 165);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (166, 2, '$183092.20', 11, 166);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (167, 3, '$414567.87', 2, 167);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (168, 5, '$137453.00', 2, 168);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (169, 1, '$972863.73', 10, 169);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (170, 4, '$635464.86', 13, 170);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (171, 3, '$571602.44', 9, 171);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (172, 1, '$130490.42', 18, 172);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (173, 4, '$106723.99', 9, 173);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (174, 3, '$316995.31', 10, 174);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (175, 2, '$886416.35', 2, 175);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (176, 4, '$245783.41', 4, 176);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (177, 3, '$575782.77', 10, 177);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (178, 3, '$969269.28', 7, 178);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (179, 1, '$261356.62', 10, 179);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (180, 3, '$12502.97', 18, 180);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (181, 5, '$11156.13', 11, 181);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (182, 2, '$362133.72', 8, 182);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (183, 3, '$280685.53', 13, 183);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (184, 3, '$928379.74', 12, 184);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (185, 1, '$822155.19', 5, 185);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (186, 3, '$292487.45', 15, 186);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (187, 1, '$364923.16', 10, 187);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (188, 3, '$190225.52', 17, 188);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (189, 2, '$466038.14', 16, 189);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (190, 1, '$11087.79', 13, 190);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (191, 1, '$29274.17', 10, 191);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (192, 2, '$58044.31', 3, 192);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (193, 5, '$629437.04', 8, 193);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (194, 1, '$204724.98', 11, 194);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (195, 2, '$137610.67', 18, 195);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (196, 4, '$948173.55', 4, 196);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (197, 4, '$614303.71', 11, 197);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (198, 4, '$982893.95', 16, 198);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (199, 1, '$119965.85', 8, 199);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (200, 3, '$560236.07', 2, 200);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (201, 4, '$933786.02', 10, 201);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (202, 3, '$719476.75', 7, 202);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (203, 1, '$168603.84', 2, 203);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (204, 3, '$619923.94', 3, 204);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (205, 5, '$433966.80', 12, 205);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (206, 4, '$222568.81', 11, 206);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (207, 2, '$577643.32', 15, 207);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (208, 2, '$13969.73', 11, 208);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (209, 2, '$468660.97', 13, 209);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (210, 3, '$520682.63', 12, 210);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (211, 3, '$874954.61', 5, 211);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (212, 2, '$213790.50', 1, 212);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (213, 1, '$388776.32', 3, 213);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (214, 3, '$999989.55', 16, 214);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (215, 4, '$129883.25', 4, 215);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (216, 5, '$428637.47', 6, 216);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (217, 5, '$903084.11', 15, 217);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (218, 5, '$659030.25', 16, 218);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (219, 3, '$810927.91', 18, 219);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (220, 2, '$924100.92', 14, 220);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (221, 5, '$704109.38', 3, 221);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (222, 4, '$585787.38', 4, 222);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (223, 2, '$726472.99', 4, 223);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (224, 1, '$668162.92', 11, 224);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (225, 1, '$918291.36', 9, 225);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (226, 4, '$685312.83', 12, 226);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (227, 2, '$496445.14', 14, 227);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (228, 5, '$485394.59', 1, 228);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (229, 4, '$29614.74', 13, 229);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (230, 5, '$842216.16', 12, 230);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (231, 3, '$474274.58', 10, 231);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (232, 2, '$948062.31', 7, 232);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (233, 2, '$952702.29', 8, 233);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (234, 3, '$983858.37', 5, 234);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (235, 3, '$507112.74', 17, 235);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (236, 2, '$773202.69', 14, 236);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (237, 5, '$917957.83', 13, 237);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (238, 1, '$426959.54', 10, 238);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (239, 3, '$148917.76', 18, 239);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (240, 3, '$835406.06', 15, 240);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (241, 4, '$327460.14', 10, 241);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (242, 1, '$908997.82', 11, 242);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (243, 2, '$101116.76', 4, 243);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (244, 3, '$666849.40', 5, 244);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (245, 2, '$906066.32', 4, 245);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (246, 5, '$765465.35', 14, 246);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (247, 5, '$13506.02', 9, 247);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (248, 2, '$733643.63', 3, 248);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (249, 3, '$994965.60', 17, 249);
insert into juega_para (id_contrato, duración, sueldo, equipo, id_jugador) values (250, 5, '$493964.77', 2, 250);

insert into tiene (equipo, sede) values (1, 14);
insert into tiene (equipo, sede) values (2, 8);
insert into tiene (equipo, sede) values (3, 10);
insert into tiene (equipo, sede) values (4, 13);
insert into tiene (equipo, sede) values (5, 7);
insert into tiene (equipo, sede) values (6, 12);
insert into tiene (equipo, sede) values (7, 8);
insert into tiene (equipo, sede) values (8, 20);
insert into tiene (equipo, sede) values (9, 13);
insert into tiene (equipo, sede) values (10, 2);
insert into tiene (equipo, sede) values (11, 6);
insert into tiene (equipo, sede) values (12, 15);
insert into tiene (equipo, sede) values (13, 6);
insert into tiene (equipo, sede) values (14, 6);
insert into tiene (equipo, sede) values (15, 19);
insert into tiene (equipo, sede) values (16, 18);
insert into tiene (equipo, sede) values (17, 14);
insert into tiene (equipo, sede) values (18, 3);

insert into juego (resultado, equipo_local, equipo_visita) values ('3-6', 12, 11);
insert into juego (resultado, equipo_local, equipo_visita) values ('1-4', 3, 15);
insert into juego (resultado, equipo_local, equipo_visita) values ('8-2', 4, 12);
insert into juego (resultado, equipo_local, equipo_visita) values ('3-0', 18, 7);
insert into juego (resultado, equipo_local, equipo_visita) values ('1-5', 16, 13);
insert into juego (resultado, equipo_local, equipo_visita) values ('1-1', 11, 15);
insert into juego (resultado, equipo_local, equipo_visita) values ('1-6', 9, 2);
insert into juego (resultado, equipo_local, equipo_visita) values ('7-3', 7, 14);
insert into juego (resultado, equipo_local, equipo_visita) values ('6-2', 3, 13);
insert into juego (resultado, equipo_local, equipo_visita) values ('3-7', 7, 15);
insert into juego (resultado, equipo_local, equipo_visita) values ('2-2', 12, 16);
insert into juego (resultado, equipo_local, equipo_visita) values ('1-3', 14, 7);
insert into juego (resultado, equipo_local, equipo_visita) values ('2-6', 12, 4);
insert into juego (resultado, equipo_local, equipo_visita) values ('2-3', 14, 15);
insert into juego (resultado, equipo_local, equipo_visita) values ('8-6', 1, 3);
insert into juego (resultado, equipo_local, equipo_visita) values ('4-9', 14, 13);
insert into juego (resultado, equipo_local, equipo_visita) values ('4-3', 7, 18);
insert into juego (resultado, equipo_local, equipo_visita) values ('2-9', 15, 16);
insert into juego (resultado, equipo_local, equipo_visita) values ('8-8', 14, 16);
insert into juego (resultado, equipo_local, equipo_visita) values ('8-0', 17, 3);
insert into juego (resultado, equipo_local, equipo_visita) values ('9-9', 4, 16);
insert into juego (resultado, equipo_local, equipo_visita) values ('9-1', 5, 16);
insert into juego (resultado, equipo_local, equipo_visita) values ('0-7', 17, 13);
insert into juego (resultado, equipo_local, equipo_visita) values ('7-5', 11, 12);
insert into juego (resultado, equipo_local, equipo_visita) values ('3-2', 17, 16);
insert into juego (resultado, equipo_local, equipo_visita) values ('9-0', 3, 8);
insert into juego (resultado, equipo_local, equipo_visita) values ('7-8', 16, 5);
insert into juego (resultado, equipo_local, equipo_visita) values ('4-6', 17, 2);
insert into juego (resultado, equipo_local, equipo_visita) values ('6-1', 14, 18);
insert into juego (resultado, equipo_local, equipo_visita) values ('7-5', 8, 1);
insert into juego (resultado, equipo_local, equipo_visita) values ('0-1', 16, 11);
insert into juego (resultado, equipo_local, equipo_visita) values ('4-1', 1, 11);
insert into juego (resultado, equipo_local, equipo_visita) values ('0-8', 8, 6);
insert into juego (resultado, equipo_local, equipo_visita) values ('8-0', 18, 8);
insert into juego (resultado, equipo_local, equipo_visita) values ('7-7', 2, 18);
insert into juego (resultado, equipo_local, equipo_visita) values ('5-0', 4, 2);
insert into juego (resultado, equipo_local, equipo_visita) values ('4-5', 3, 16);
insert into juego (resultado, equipo_local, equipo_visita) values ('1-3', 11, 14);
insert into juego (resultado, equipo_local, equipo_visita) values ('4-9', 9, 4);
insert into juego (resultado, equipo_local, equipo_visita) values ('4-6', 11, 4);
insert into juego (resultado, equipo_local, equipo_visita) values ('9-7', 15, 5);
insert into juego (resultado, equipo_local, equipo_visita) values ('3-0', 15, 6);
insert into juego (resultado, equipo_local, equipo_visita) values ('7-9', 12, 16);
insert into juego (resultado, equipo_local, equipo_visita) values ('4-5', 9, 12);
insert into juego (resultado, equipo_local, equipo_visita) values ('5-3', 11, 6);
insert into juego (resultado, equipo_local, equipo_visita) values ('7-5', 12, 2);
insert into juego (resultado, equipo_local, equipo_visita) values ('2-8', 16, 9);
insert into juego (resultado, equipo_local, equipo_visita) values ('6-4', 3, 15);
insert into juego (resultado, equipo_local, equipo_visita) values ('4-5', 16, 18);
insert into juego (resultado, equipo_local, equipo_visita) values ('8-6', 12, 14);
insert into juego (resultado, equipo_local, equipo_visita) values ('1-5', 12, 17);
insert into juego (resultado, equipo_local, equipo_visita) values ('6-9', 17, 13);
insert into juego (resultado, equipo_local, equipo_visita) values ('8-7', 10, 17);
insert into juego (resultado, equipo_local, equipo_visita) values ('4-2', 9, 13);
insert into juego (resultado, equipo_local, equipo_visita) values ('4-1', 11, 2);
insert into juego (resultado, equipo_local, equipo_visita) values ('6-9', 16, 7);
insert into juego (resultado, equipo_local, equipo_visita) values ('7-5', 3, 15);
insert into juego (resultado, equipo_local, equipo_visita) values ('9-9', 14, 1);
insert into juego (resultado, equipo_local, equipo_visita) values ('9-1', 10, 11);
insert into juego (resultado, equipo_local, equipo_visita) values ('4-2', 12, 15);
insert into juego (resultado, equipo_local, equipo_visita) values ('4-9', 2, 9);
insert into juego (resultado, equipo_local, equipo_visita) values ('3-5', 18, 13);
insert into juego (resultado, equipo_local, equipo_visita) values ('5-1', 12, 6);
insert into juego (resultado, equipo_local, equipo_visita) values ('7-5', 18, 14);
insert into juego (resultado, equipo_local, equipo_visita) values ('9-4', 10, 8);
insert into juego (resultado, equipo_local, equipo_visita) values ('1-4', 9, 2);
insert into juego (resultado, equipo_local, equipo_visita) values ('8-8', 3, 8);
insert into juego (resultado, equipo_local, equipo_visita) values ('8-9', 8, 7);
insert into juego (resultado, equipo_local, equipo_visita) values ('7-0', 5, 13);
insert into juego (resultado, equipo_local, equipo_visita) values ('3-3', 12, 7);
insert into juego (resultado, equipo_local, equipo_visita) values ('1-8', 14, 13);
insert into juego (resultado, equipo_local, equipo_visita) values ('0-0', 3, 16);
insert into juego (resultado, equipo_local, equipo_visita) values ('1-9', 4, 9);
insert into juego (resultado, equipo_local, equipo_visita) values ('3-0', 2, 1);
insert into juego (resultado, equipo_local, equipo_visita) values ('7-9', 7, 5);
insert into juego (resultado, equipo_local, equipo_visita) values ('4-9', 6, 1);
insert into juego (resultado, equipo_local, equipo_visita) values ('2-7', 18, 16);
insert into juego (resultado, equipo_local, equipo_visita) values ('0-0', 2, 12);
insert into juego (resultado, equipo_local, equipo_visita) values ('2-4', 8, 9);
insert into juego (resultado, equipo_local, equipo_visita) values ('0-6', 2, 7);
insert into juego (resultado, equipo_local, equipo_visita) values ('5-8', 15, 11);
insert into juego (resultado, equipo_local, equipo_visita) values ('6-3', 3, 13);
insert into juego (resultado, equipo_local, equipo_visita) values ('5-8', 11, 8);
insert into juego (resultado, equipo_local, equipo_visita) values ('4-9', 18, 2);
insert into juego (resultado, equipo_local, equipo_visita) values ('6-7', 12, 9);
insert into juego (resultado, equipo_local, equipo_visita) values ('1-8', 8, 16);
insert into juego (resultado, equipo_local, equipo_visita) values ('3-5', 11, 10);
insert into juego (resultado, equipo_local, equipo_visita) values ('7-8', 8, 11);
insert into juego (resultado, equipo_local, equipo_visita) values ('2-7', 1, 18);
insert into juego (resultado, equipo_local, equipo_visita) values ('1-4', 17, 15);
insert into juego (resultado, equipo_local, equipo_visita) values ('3-8', 10, 7);
insert into juego (resultado, equipo_local, equipo_visita) values ('4-0', 13, 6);
insert into juego (resultado, equipo_local, equipo_visita) values ('2-3', 16, 8);
insert into juego (resultado, equipo_local, equipo_visita) values ('0-0', 6, 15);
insert into juego (resultado, equipo_local, equipo_visita) values ('1-0', 3, 5);
insert into juego (resultado, equipo_local, equipo_visita) values ('1-9', 15, 2);
insert into juego (resultado, equipo_local, equipo_visita) values ('0-6', 14, 18);
insert into juego (resultado, equipo_local, equipo_visita) values ('6-9', 4, 16);
insert into juego (resultado, equipo_local, equipo_visita) values ('6-9', 18, 9);
insert into juego (resultado, equipo_local, equipo_visita) values ('7-0', 6, 1);
insert into juego (resultado, equipo_local, equipo_visita) values ('0-5', 7, 10);
insert into juego (resultado, equipo_local, equipo_visita) values ('4-5', 13, 9);
insert into juego (resultado, equipo_local, equipo_visita) values ('7-3', 10, 15);
insert into juego (resultado, equipo_local, equipo_visita) values ('8-9', 15, 18);
insert into juego (resultado, equipo_local, equipo_visita) values ('5-2', 14, 4);
insert into juego (resultado, equipo_local, equipo_visita) values ('9-9', 17, 2);
insert into juego (resultado, equipo_local, equipo_visita) values ('7-7', 1, 13);
insert into juego (resultado, equipo_local, equipo_visita) values ('9-5', 1, 14);
insert into juego (resultado, equipo_local, equipo_visita) values ('9-1', 14, 6);
insert into juego (resultado, equipo_local, equipo_visita) values ('7-3', 4, 13);
insert into juego (resultado, equipo_local, equipo_visita) values ('3-8', 13, 15);
insert into juego (resultado, equipo_local, equipo_visita) values ('6-2', 13, 14);
insert into juego (resultado, equipo_local, equipo_visita) values ('7-6', 2, 4);
insert into juego (resultado, equipo_local, equipo_visita) values ('7-3', 10, 13);
insert into juego (resultado, equipo_local, equipo_visita) values ('2-2', 14, 12);
insert into juego (resultado, equipo_local, equipo_visita) values ('7-7', 13, 11);
insert into juego (resultado, equipo_local, equipo_visita) values ('4-1', 8, 1);
insert into juego (resultado, equipo_local, equipo_visita) values ('7-7', 1, 18);
insert into juego (resultado, equipo_local, equipo_visita) values ('5-9', 17, 7);
insert into juego (resultado, equipo_local, equipo_visita) values ('7-1', 13, 16);
insert into juego (resultado, equipo_local, equipo_visita) values ('4-6', 9, 11);
insert into juego (resultado, equipo_local, equipo_visita) values ('8-7', 18, 16);
insert into juego (resultado, equipo_local, equipo_visita) values ('8-4', 13, 3);
insert into juego (resultado, equipo_local, equipo_visita) values ('6-7', 9, 17);
insert into juego (resultado, equipo_local, equipo_visita) values ('8-7', 10, 9);
insert into juego (resultado, equipo_local, equipo_visita) values ('5-8', 15, 1);
insert into juego (resultado, equipo_local, equipo_visita) values ('9-5', 1, 10);
insert into juego (resultado, equipo_local, equipo_visita) values ('1-2', 11, 6);
insert into juego (resultado, equipo_local, equipo_visita) values ('2-3', 2, 12);
insert into juego (resultado, equipo_local, equipo_visita) values ('9-3', 1, 16);
insert into juego (resultado, equipo_local, equipo_visita) values ('4-6', 3, 14);
insert into juego (resultado, equipo_local, equipo_visita) values ('6-9', 16, 11);
insert into juego (resultado, equipo_local, equipo_visita) values ('9-3', 6, 8);
insert into juego (resultado, equipo_local, equipo_visita) values ('4-1', 1, 3);
insert into juego (resultado, equipo_local, equipo_visita) values ('6-6', 14, 17);
insert into juego (resultado, equipo_local, equipo_visita) values ('4-1', 17, 14);
insert into juego (resultado, equipo_local, equipo_visita) values ('2-0', 14, 3);
insert into juego (resultado, equipo_local, equipo_visita) values ('4-2', 4, 7);
insert into juego (resultado, equipo_local, equipo_visita) values ('9-0', 9, 13);
insert into juego (resultado, equipo_local, equipo_visita) values ('3-4', 18, 8);
insert into juego (resultado, equipo_local, equipo_visita) values ('7-2', 3, 11);
insert into juego (resultado, equipo_local, equipo_visita) values ('0-8', 11, 15);
insert into juego (resultado, equipo_local, equipo_visita) values ('4-8', 14, 4);
insert into juego (resultado, equipo_local, equipo_visita) values ('1-3', 5, 8);
insert into juego (resultado, equipo_local, equipo_visita) values ('9-8', 17, 12);
insert into juego (resultado, equipo_local, equipo_visita) values ('3-5', 8, 1);
insert into juego (resultado, equipo_local, equipo_visita) values ('4-9', 17, 15);
insert into juego (resultado, equipo_local, equipo_visita) values ('6-4', 15, 14);
insert into juego (resultado, equipo_local, equipo_visita) values ('2-9', 18, 4);
insert into juego (resultado, equipo_local, equipo_visita) values ('8-5', 10, 17);
insert into juego (resultado, equipo_local, equipo_visita) values ('1-5', 7, 6);
insert into juego (resultado, equipo_local, equipo_visita) values ('1-2', 6, 5);
insert into juego (resultado, equipo_local, equipo_visita) values ('8-6', 18, 14);

create or replace view vListaJugadoresAivee as
select puesto, nombre from jugador join juega_para 
on jugador.n°_cédula = juega_para.id_jugador join equipos
on juega_para.equipo = equipos.id_equipo 
where equipos.nombre_equipo like 'Aivee';

select * from vListaJugadoresAivee;

create or replace view vEstadioEquipo as 
select nombre_equipo as Equipo, sede.nombre_sede as Estadio from equipos join tiene
on equipos.id_equipo = tiene.equipo join sede
on tiene.sede = sede.id_sede;

select * from vEstadioEquipo;

DROP function IF EXISTS `cantidad_de_jugadores`;

DELIMITER $$
USE `liga_deportiva`$$
CREATE FUNCTION `cantidad_de_jugadores` (team_id int)
RETURNS INTEGER
reads sql data	
BEGIN
	declare total_jugadores int;
    select count(*) into total_jugadores from juega_para where juega_para.equipo = team_id;
RETURN total_jugadores;
END$$

DELIMITER ;

select * from juega_para;

select cantidad_de_jugadores(2);
select * from juega_para where juega_para.equipo = 2;

USE `liga_deportiva`;
DROP function IF EXISTS `nombre_sede`;

DELIMITER $$
USE `liga_deportiva`$$
CREATE FUNCTION `nombre_sede` (team_id int)
RETURNS varchar(40)
reads sql data
BEGIN
	declare estadio varchar(40);
    declare id_estadio int;
    select sede into id_estadio from tiene where tiene.equipo = team_id;
    select nombre_sede into estadio from sede where sede.id_sede = id_estadio;
RETURN estadio;
END$$

DELIMITER ;

use liga_deportiva;
select nombre_sede(3);

USE `liga_deportiva`;
DROP procedure IF EXISTS `cambio_de_equipo`;

DELIMITER $$
USE `liga_deportiva`$$
CREATE PROCEDURE `cambio_de_equipo` (IN  tiempo int, salario varchar(15), nuevo_equipo int, id_player int)
BEGIN
	UPDATE juega_para
    set juega_para.duración = tiempo, juega_para.sueldo = salario, juega_para.equipo = nuevo_equipo
    where juega_para.id_jugador = id_player;
END$$

DELIMITER ;

select * from juega_para where id_jugador = 1;

call cambio_de_equipo(4, '$15200.00', 3, 1);

USE `liga_deportiva`;
DROP procedure IF EXISTS `baja_jugador_liga`;

DELIMITER $$
USE `liga_deportiva`$$
CREATE PROCEDURE `baja_jugador_liga` (IN id_player int)
BEGIN
	delete from juega_para where juega_para.id_jugador = id_player;
    delete from jugador where n°_cédula = id_player;
END$$

DELIMITER ;

select * from jugador where n°_cédula = 10;
call baja_jugador_liga(10);

USE liga_deportiva;
START TRANSACTION;
delete from árbitros where n°_cédula = 1;
delete from árbitros where n°_cédula = 2;
delete from árbitros where n°_cédula = 3;
delete from árbitros where n°_cédula = 4;
delete from árbitros where n°_cédula = 5;
delete from árbitros where n°_cédula = 6;
delete from árbitros where n°_cédula = 7;
delete from árbitros where n°_cédula = 8;
#rollback;
commit;

select * from árbitros;
select * from dueños;

START transaction;
insert into dueños (id_dueño, RFC, direccion, nombre, patrimonio) values (31, '479-36-9741', '041 Mallory Circle', 'Leonie Renzini', 7657.81);
insert into dueños (id_dueño, RFC, direccion, nombre, patrimonio) values (32, '792-97-5622', '837 South Alley', 'Audy Clampe', 6389.38);
insert into dueños (id_dueño, RFC, direccion, nombre, patrimonio) values (33, '763-12-9352', '1814 Reinke Court', 'Timmi Duerden', 6839.7);
insert into dueños (id_dueño, RFC, direccion, nombre, patrimonio) values (34, '286-46-9761', '52706 Parkside Junction', 'Roseanna Gheerhaert', 2045.47);
savepoint nuevos_dueños_1;
insert into dueños (id_dueño, RFC, direccion, nombre, patrimonio) values (35, '607-88-0391', '62561 Main Plaza', 'Porter Braysher', 8242.59);
insert into dueños (id_dueño, RFC, direccion, nombre, patrimonio) values (36, '386-23-1210', '9378 Express Point', 'Nelia Crow', 4789.54);
insert into dueños (id_dueño, RFC, direccion, nombre, patrimonio) values (37, '624-81-5461', '407 Autumn Leaf Park', 'Zaccaria Fawltey', 9052.68);
insert into dueños (id_dueño, RFC, direccion, nombre, patrimonio) values (38, '533-78-8373', '07135 Schlimgen Court', 'Tim Osgordby', 3752.75);
savepoint nuevos_dueños_2;

#release savepoint nuevos_dueños_1;

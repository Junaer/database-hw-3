create table if not exists Исполнители (
id serial primary key,
Псевдоним varchar(40) not null unique
);

create table if not exists Альбом (
id serial primary key,
Год_выпуска integer not null,
Название varchar (50) not null
);

create table if not exists Трек (
id serial primary key,
Название varchar (50) not null,
Длительность integer not null
);

create table if not exists Жанры ( 
id serial primary key,
Название_жанра varchar (40) not null
)


create table if not exists Жанры_исполнителей ( 
id serial primary key,
Идентификатор_жанра integer references Жанры(id),
Идентификатор_исполнителя integer unique references Исполнители(id)
)

create table if not exists Альбомы_исполнителей (
id serial primary  key,
Идентификатор_альбома integer references Альбом(id),
Идентификатор_исполнителя integer references Исполнители(id)
)

create table if not exists Сборник (
id serial primary key,
Название varchar (40) not null,
Год_выпуска integer not null
)

create table if not exists Сборник_треков (
id serial primary key,
Идентификатор_сборника integer references Сборник(id),
Идентификатор_трека integer references Трек(id)
)

create table  if not exists Треки_в_альбоме (
id serial primary key,
Идентификатор_альбома integer references Альбом(id),
Идентификатор_трека integer references Трек(id)
);





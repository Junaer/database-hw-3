create table if not exists ����������� (
id serial primary key,
��������� varchar(40) not null unique
);

create table if not exists ������ (
id serial primary key,
���_������� integer not null,
�������� varchar (50) not null
);

create table if not exists ���� (
id serial primary key,
�������� varchar (50) not null,
������������ integer not null
);

create table if not exists ����� ( 
id serial primary key,
��������_����� varchar (40) not null
)


create table if not exists �����_������������ ( 
id serial primary key,
�������������_����� integer references �����(id),
�������������_����������� integer unique references �����������(id)
)

create table if not exists �������_������������ (
id serial primary  key,
�������������_������� integer references ������(id),
�������������_����������� integer references �����������(id)
)

create table if not exists ������� (
id serial primary key,
�������� varchar (40) not null,
���_������� integer not null
)

create table if not exists �������_������ (
id serial primary key,
�������������_�������� integer references �������(id),
�������������_����� integer references ����(id)
)

create table  if not exists �����_�_������� (
id serial primary key,
�������������_������� integer references ������(id),
�������������_����� integer references ����(id)
);





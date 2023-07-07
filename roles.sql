drop table if exists roles;

show warnings;

create table roles (
	idRol int unsigned not null auto_increment primary key,
	descripcion varchar(30) not null
) ENGINE = INNODB;

show warnings;

insert into
	roles
values
	(Default, "admin"),
	(Default, "user");

show warnings;
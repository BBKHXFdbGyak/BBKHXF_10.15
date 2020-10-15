create table tanfolyam (
	tkod int primary key not null,
    ar int not null check(ar>=0),
    tipus varchar(30) not null,
    megnevezés varchar(50) not null);
create table resztvevo(
	tajszam int primary key not null,
    nev varchar(50),
    lakcim varchar(50));
create table befizetes(
	tanfolyam int references tanfolyam,
    resztvevo int references resztvevo);
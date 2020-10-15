create table gyarto (
	adoszam int primary key not null,
    nev varchar(30) not null,
    irsz varchar(4) not null,
    varos varchar(40) not null,
    utca varchar(100)not null
    );
create table termek (
	tkod int primary key not null,
    nev varchar(50),
    ear int not null check(ear>0),
    gyarto int references gyarto);
create table egysegek (
	db int not null check(db>0),
    aru int not null references termek);
create table komponens (
	termek int not null references termek,
    alkatresz int not null references alkatresz);
create table alkatresz (
	akod int primary key not null,
    nev varchar(50));
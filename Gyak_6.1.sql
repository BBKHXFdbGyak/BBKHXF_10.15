create table gyarto (
	adoszam int primary key,
    nev varchar(30) not null,
    telephely varchar(50) not null);
create table termek (
	tkod int primary key,
    nev varchar(30) not null,
    ear int not null check(ear>0),
    gyarto int references gyarto
    )
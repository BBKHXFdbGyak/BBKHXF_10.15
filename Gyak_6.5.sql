CREATE TABLE termekek (
	tkod INT PRIMARY KEY, 
    nev varchar(50) NOT NULL, 
    ear INT CHECK (EAR > 0), kategoria CHAR(20));
insert into termekek values(1,'N1',3);
insert into termekek values(2,NULL,5);
insert into termekek values(3,'N3',-1);
insert into termekek values(4,'N4',0);
insert into termekek values(5,"N5",7);
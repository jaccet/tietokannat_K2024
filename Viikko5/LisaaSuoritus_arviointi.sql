CREATE PROCEDURE `LisaaSuoritus` (
in En varchar(45),
in Sn varchar(45),
in KK varchar(45),
in Arvos int
)
Aliohjelma:BEGIN
declare opiskid int default 0;
declare kursid int default 0;

select idopiskelija into opiskid from opiskelija where etunimi=En and sukunimi=Sn;

if opiskid=0 then
	select 'Opiskelijaa ei ole';
    leave Aliohjelma;
end if;

select idopintojakso into kursid from opintojakso where koodi=KK;

if kursid=0 then
	select 'Opintojaksoa ei ole';
    leave Aliohjelma;
end if;

if arvos>5 or arvos<0 then
	select 'Arvosana ei hyväksytyllä välillä';
    leave Aliohjelma;
end if;

insert into arviointi values (null,curdate(),Arvos,opiskid,kursid);

END
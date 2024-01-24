
create table ACTOR(Act_id int(3) primary key,Act_name varchar(40),Act_gender
varchar(10));
create table DIRECTOR(Dir_id int(4) primary key,Dir_name varchar(40),Dir_phone
varchar(20));
create table MOVIES(Mov_id int(5) primary key,Mov_Title varchar(40),Mov_Year
int(5),Mov_Lang varchar(10),Dir_id int(4), foreign key(Dir_id) references
DIRECTOR(Dir_id));
create table MOVIE_CAST(Act_id int(10),Mov_id int(10),Role varchar(40),primary
key(Act_id,Mov_id),foreign key(Act_id) references ACTOR(Act_id),foreign key(Mov_id)
references MOVIES(Mov_id));
create table RATING(Mov_id int(10) primary key,Rev_Stars int(5),foreign key(Mov_id)
references Movies(Mov_id));



insert into ACTOR values(1,"John Ferguson","Male"),(2,"James Stewart","Male"),
(3,"Harrison Ford","Male"),(4,"Prabhas","Male");
insert into DIRECTOR values(101,"Hitchock","9090909090"),(102,"Steven
Spielberg","9191919191"),(103,"Rajamouli","9292929292");
insert into MOVIES values(1001,"Rear Window",1954,"English",101),
(1002,"Vertigo",1958,"English",101),(1003,"Indiana Jones 1",1981,"English",102),
(1004,"Indiana Jones 5",2023,"English",102),(1005,"Bahubali 1",2015,"Telugu",103),
(1006,"Bahubali 2",2017,"Telugu",103);
insert into MOVIE_CAST values(1,1001,"Hero"),(2,1002,"Hero"),(3,1003,"Hero"),
(3,1004,"Hero Father"),(4,1005,"Hero"),(4,1006,"Hero");
insert into RATING values(1001,9),(1002,8),(1003,9),(1004,7),(1005,8),(1006,8);
select *from RATING;



select Mov_Title from MOVIES where Dir_id In (select Dir_id from DIRECTOR where
Dir_name = "Hitchock");

select M.Mov_title,MC.Act_id from MOVIES M,MOVIE_CAST MC where M.Mov_id=MC.Mov_id
AND MC.Act_id IN(select Act_id from MOVIE_CAST group by Act_id Having
count(Mov_id)>=2);

select Act_Name, Mov_Title, Mov_Year from ACTOR A JOIN MOVIE_CAST MC ON
A.Act_id=MC.Act_id INNER JOIN MOVIES M ON MC.Mov_id=M.Mov_id where M.Mov_Year NOT
BETWEEN 2000 AND 2015;


select Mov_Title,max(Rev_Stars) from MOVIES M,RATING R where M.Mov_id=R.Mov_id
group by Mov_Title having max(Rev_Stars)>0 order by Mov_Title;

UPDATE RATING R,MOVIES M,DIRECTOR D SET Rev_Stars=5 WHERE R.Mov_id=M.Mov_id and
M.Dir_id=D.Dir_id and Dir_Name='Steven Spielberg';

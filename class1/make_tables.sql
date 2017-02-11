drop table artist, cd, company, music, play, track, writer;

create table cd(
  id char(10), 
  title varchar, 
  artist int, 
  price int, 
  year int, 
  issue int, 
  primary key (id)
);

create table track(
  cd char(10),
  num int,
  music int,
  length int,
  primary key(cd, num)
);

create table music(
  id int,
  title varchar,
  primary key (id)
);

create table artist(
  id int,
  name varchar,
  contract int,
  member int,
  primary key (id)
);

create table company(
  id int,
  name varchar,
  nationality varchar,
  primary key (id)
);

create table play(
  cd char(10),
  track int,
  artist int, 
  role varchar /* vocal, guitar, bass, drum */
);

create table writer(
  music int,
  artist int
);


alter table cd  
add foreign key (artist) references artist(id),
add foreign key (issue) references company(id);

alter table track
add foreign key(cd) references cd(id), 
add foreign key(music) references music(id);

alter table artist
add foreign key (contract) references company(id),
add foreign key (member) references artist(id);

alter table play
add foreign key (cd, track) references track(cd, num),
add foreign key (artist) references artist(id);

alter table writer
add foreign key (music) references music(id),
add foreign key (artist) references artist(id);


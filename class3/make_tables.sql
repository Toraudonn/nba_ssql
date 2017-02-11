drop view team15 cascade;
drop table player_attributes, team_attributes, player, team, division, conference, playoff, game, p_round, hand, season cascade;


create table player(
  id int,
  name varchar(40),
  birthday date,
  birth_place varchar(255),
  height float(8), /* in meters */
  weight float(8), /* in kilograms */
  college varchar(255),
  debut date,
  shoots int, /* 0: righty, 1: lefty 2: both */
  primary key(id)
);

create table player_attributes(
  player int,
  season int,
  team int,
  no int,
  pos varchar(5),
  g int,
  gs int,
  mp int,
  pts int,
  fg int,
  fga int,
  ft int,
  fta int,
  salaries float(32),
  primary key(player, season, team)
);

create table team(
  id int,
  title varchar(255),
  country varchar(255),
  state varchar(255),
  city varchar(255),
  division int, /* division */
  start_year int,
  end_year int,
  seasons int, 
  pa int,
  champion int, 
  tot_win int,
  tot_lose int,
  pict varchar(30),
  primary key(id)
);

create table team_attributes(
  team int,
  season int, 
  wins int, 
  loses int, 
  finish int,
  primary key(team, season)
);

create table playoff(
  season int,
  p_round int,
  winner int,
  loser int,
  win_score int,
  lose_score int,
  primary key(season, p_round)
);

create table game(
  season int,
  p_round int,
  game int, /* 1-7 games per round "usually" */
  winner int,
  loser int,
  win_score int,
  lose_score int,
  home int,
  primary key(season, p_round, game)
);

create table conference(
  id int,
  title varchar(255),
  pict varchar(30),
  primary key(id)
);

create table division(
  id int,
  title varchar(255),
  conf int,
  primary key(id)
);

create table p_round(
  id int,
  title varchar(255),
  primary key(id)
);

create table season(
  id int,
  year varchar(12),
  primary key(id)
);

create table hand(
  id int,
  hand varchar(12),
  primary key(id)
);

alter table player_attributes
add foreign key (player) references player(id),
add foreign key (season) references season(id),
add foreign key (team) references team(id);

alter table team
add foreign key (division) references division(id);

alter table team_attributes
add foreign key (team) references team(id),
add foreign key (season) references season(id);

alter table playoff
add foreign key (season) references season(id),
add foreign key (p_round) references p_round(id),
add foreign key (winner) references team(id),
add foreign key (loser) references team(id);

alter table game
add foreign key (season) references season(id),
add foreign key (p_round) references p_round(id),
add foreign key (winner) references team(id),
add foreign key (loser) references team(id),
add foreign key (home) references team(id);

alter table division
add foreign key (conf) references conference(id);

alter table player
add foreign key (shoots) references hand(id);


\copy season from 'season.csv' delimiter ',' csv;
\copy hand from 'hand.csv' delimiter ',' csv;
\copy conference from 'conference.csv' delimiter ',' csv;
\copy division from 'division.csv' delimiter ',' csv;
\copy team from 'team.csv' delimiter ',' csv;
\copy team_attributes from 'team_attributes.csv' delimiter ',' csv;
\copy player from 'player.csv' delimiter ',' csv;
\copy player_attributes from 'player_attributes.csv' delimiter ',' csv;
\copy p_round from 'p_round.csv' delimiter ',' csv;
\copy playoff from 'playoff.csv' delimiter ',' csv;
\copy game from 'game.csv' delimiter ',' csv;

create view team15 as
select t.id as id, t.title as name, d.title as division, c.title as conference, ta.wins as wins, ta.loses as loses, ta.finish as finish from team t, team_attributes ta, division d, conference c where ta.season=1 and ta.team=t.id and d.id=t.division and c.id=d.conf;

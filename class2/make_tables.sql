drop table season, playoff, game, round, division, conference, team, team_attributes, coach, coaching, player, player_attributes;

create table season(
  id int, 
  title varchar(12), /* ex: 2015-16 */
  start_year int,  
  primary key (id)
);

/* seasons has many playoffs */
create table playoff(
  id int,  
  winner int, 
  loser int,
  season int, 
  round int,
  win_score int,
  lose_score int,
  primary key (id)
);

/* playoffs has many games */
create table game(
  playoff int, 
  game int, /* 1- 7 */
  winner int,
  loser int,
  win_score int, 
  lose_score int,
  home int, /* home team */
  date date,
  primary key (playoff, game)
);

create table round(
  id int,
  title varchar(50)
);

create table conference(
  id int,
  title varchar(100), /* "Western", "Eastern" */
  primary key (id)
);

/* conference has many divisions */
create table division(
  id int,
  title varchar(100), /* "Atlantic", "Central", "Southeast", "Northwest", "Pacific", "Southwest" */
  conf int,
  primary key (id)
);

/* divisions has many teams */
create table team(
  id int,
  title varchar(100), 
  country varchar(100),
  state varchar(100),
  city varchar(100),
  division int,
  start_year date,
  end_year date,
  seasons int,
  pa int,
  champion int,
  tot_win int,
  tot_lose int,
  primary key (id)
);

create table team_attributes(
  team int,
  season int,
  win int, /* regular season wins */
  lose int, /* regular season loses */
  finish int,
  playoff int,
  playoff_finish varchar(100),
  primary key (team, season)
);

/* relation of coach and team_attributes */
create table coaching(
  coach int,
  team_attr int,
  g int,
);

/* team has many players, but players could be in multiple teams depending on seasons */
create table player(
  id int,
  name varchar(50),
  birthday date,
  birth_place varchar(100),
  height int,
  weight int,
  college int,
  debuts date,
  shoots varchar(10)
);

create table player_attributes(
  player int,
  season int,
  no int,
  team int,
  pos varchar(5),
  g int,
  gs int,
  mp int,
  pts int,
  fg int,
  fga int,
  ft int,
  fta int,
  salaries int,
  primary key (player, season)
);

create table coach(
  id int,
  name varchar(50),
  birthday date,
  primary key (id)
);


alter table cd  
add foreign key (artist) references artist(id),
add foreign key (issue) references company(id);
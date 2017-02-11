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


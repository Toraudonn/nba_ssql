/* company */

insert into company values (1111, 'Warner Bros', 'USA');
insert into company values (1112, 'Capitol', 'USA');
insert into company values (1113, 'Philips', 'Netherland');
insert into company values (1114, 'Islands', 'UK');
insert into company values (1115, 'DCG', 'USA');

insert into company values (2222, 'Rise', 'USA');

insert into company values (3333, 'Epic', 'USA');

insert into company values (9999, 'NA', 'NA');


/* artist */

insert into artist(id, name, contract) values (100, 'Red Hot Chili Peppers', 1111);
insert into artist values (101, 'Anthony Kiedis', 1111, 100);
insert into artist values (102, 'Flea', 1111, 100);
insert into artist values (103, 'Chad Smith', 1111, 100);
insert into artist values (104, 'Josh Klinghoffer', 1111, 100);
insert into artist(id, name, contract) values (105, 'Brian Burton', 1112);
insert into artist(id, name, contract) values (106, 'Elton John', 1113);
insert into artist(id, name, contract) values (107, 'Bernie Taupin', 1114);
insert into artist(id, name, contract) values (108, 'Mauro Refosco', 9999);
insert into artist(id, name, contract) values (109, 'Anna Waronker', 1115);
insert into artist(id, name, contract) values (110, 'Beverley Chitwood', 9999);

insert into artist(id, name, contract) values (200, 'Dance Gavin Dance', 2222);
insert into artist values (201, 'Tilian Pearson', 2222, 200);
insert into artist values (202, 'Jon Mess', 2222, 200);
insert into artist values (203, 'Will Swan', 2222, 200);
insert into artist values (204, 'Tim Feerick', 2222, 200);
insert into artist values (205, 'Matthew Mingus', 2222, 200);

insert into artist(id, name, contract) values (300, 'Incubus', 3333);
insert into artist values (301, 'Brandon Boyd', 3333, 300);
insert into artist values (302, 'Mike Einziger', 3333, 300);
insert into artist values (303, 'Chris Kilmore', 3333, 300);
insert into artist values (304, 'Dirk Lance', 3333, 300);
insert into artist values (305, 'Jose Pasillas', 3333, 300);

/* cd */

insert into cd values ('B01F81NLRY', 'The Getaway', 100, 2484, 2016, 1111); /* company 1 is Warner Bros */

insert into cd values ('B01KLSOVGE', 'MOTHERSHIP', 200, 1773, 2016, 2222); /* company 2 is Rise */

insert into cd values ('B0000296JB', 'Make Yourself', 300, 2280, 1999, 3333); /* company 3 is Epic */



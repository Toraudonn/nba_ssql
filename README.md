# NBA themed SuperSQL project

This is a project I worked on in a database class using SuperSQL.

## About SuperSQL

SuperSQL(ssql) is an extension of the SQL language which allows you to easily and quickly structure the output of a relational database into formats such as html. This language was created by [Toyama lab](http://ssql.db.ics.keio.ac.jp/) of KEIO University. 

## Overview
Explanation of each of the directories in the project. 

#### class1: A simple music database 
#### class2: Mock database relationship
#### class3: Final database relationship (with data)
#### html: html template made from ssql
#### ssql: files used to generate html

## Relationship model

![image alt](/html/image/nba_logo.png)  
The theme I wanted to work on was the 2015-16 NBA (National Basketball Association) match result which includes Regular and Playoff seasons.   

The database relationship model is shown below:  
![image alt](/html/image/database.png)  


## How to generate html using ssql

Generating html using ssql is _very_ simple. ssql has both GUI and CLI where users could generate all kinds of structure files (such as html).  
![image alt ](/html/image/system_architecture.gif)  
In a .ssql file, use the syntax below.
```
GENERATE <media><TFE>
FROM 
WHERE
```
For my project, I wanted to create a html file so i replaced `<media>` with `html`. The `FROM` `WHERE` is the exactly the same clause you would use in selecting data from SQL database.
In a CLI (unix), 
```
ssql <some_file.ssql>
```
would automatically create a html file inside public_html (if you set it up right).

## Sample Data

|    |                        |           |            |      |       |      | 
|----|------------------------|-----------|------------|------|-------|------| 
| id | title                  | division  | conference | wins | loses | rank | 
| 1  | Atlanta Hawks          | Southeast | Eastern    | 48   | 34    | 2    | 
| 2  | Boston Celtics         | Atlantic  | Eastern    | 48   | 34    | 2    | 
| 3  | Brooklyn Nets          | Atlantic  | Eastern    | 21   | 61    | 4    | 
| 4  | Charlotte Hornets      | Southeast | Eastern    | 48   | 34    | 3    | 
| 5  | Chicago Bulls          | Central   | Eastern    | 42   | 40    | 4    | 
| 6  | Cleveland Cavaliers    | Central   | Eastern    | 57   | 25    | 1    | 
| 7  | Dallas Mavericks       | Southwest | Western    | 42   | 40    | 2    | 
| 8  | Denver Nuggets         | Northwest | Western    | 33   | 49    | 4    | 
| 9  | Detroit Pistons        | Central   | Eastern    | 44   | 38    | 3    | 
| 10 | Golden State Warriors  | Pacific   | Western    | 73   | 9     | 1    | 
| 11 | Houston Rockets        | Southwest | Western    | 41   | 41    | 4    | 
| 12 | Indiana Pacers         | Central   | Eastern    | 45   | 37    | 2    | 
| 13 | Los Angeles Clippers   | Pacific   | Western    | 53   | 29    | 2    | 
| 14 | Los Angeles Lakers     | Pacific   | Western    | 17   | 65    | 5    | 
| 15 | Memphis Grizzlies      | Southwest | Western    | 42   | 40    | 3    | 
| 16 | Miami Heat             | Southeast | Eastern    | 48   | 34    | 1    | 
| 17 | Milwaukee Bucks        | Central   | Eastern    | 33   | 49    | 5    | 
| 18 | Minnesota Timberwolves | Northwest | Western    | 29   | 53    | 5    | 
| 19 | New Orleans Pelicans   | Southwest | Western    | 30   | 52    | 5    | 
| 20 | New York Knicks        | Atlantic  | Eastern    | 32   | 50    | 3    | 
| 21 | Oklahoma City Thunder  | Northwest | Western    | 55   | 27    | 1    | 
| 22 | Orlando Magic          | Southeast | Eastern    | 35   | 47    | 5    | 
| 23 | Philadelphia 76ers     | Atlantic  | Eastern    | 10   | 72    | 5    | 
| 24 | Phoenix Suns           | Pacific   | Western    | 23   | 59    | 4    | 
| 25 | Portland Trail Blazers | Northwest | Western    | 44   | 38    | 2    | 
| 26 | Sacramento Kings       | Pacific   | Western    | 33   | 49    | 3    | 
| 27 | San Antonio Spurs      | Southwest | Western    | 67   | 15    | 1    | 
| 28 | Toronto Raptors        | Atlantic  | Eastern    | 56   | 26    | 1    | 
| 29 | Utah Jazz              | Northwest | Western    | 40   | 42    | 3    | 
| 30 | Washington Wizards     | Southeast | Eastern    | 41   | 41    | 4    | 

## URL
Visit this [link](http://user.keio.ac.jp/~ua499416/ssql/) to see my project!




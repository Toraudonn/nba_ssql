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

![Alt text](/html/image/nba_logo.png)
The theme I wanted to work on was the 2015-16 NBA (National Basketball Association) match result which includes Regular and Playoff seasons. 

The database relationship model is shown below:
![Alt text](/html/image/database.png)


## How to generate html using ssql

Generating html using ssql is _very_ simple. ssql has both GUI and CLI where users could generate all kinds of structure files (such as html).
![Alt text](http://ssql.db.ics.keio.ac.jp/assets/system_architecture.gif)
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



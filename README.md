FSND Project 2 - Tournament Planner

How to run the project

Download the zip file from the link https://github.com/aimanaijaz/tournamentplanner

Steps for setting up the developement enviroment 

1. Follow instructions from this link https://www.udacity.com/wiki/ud088/vagrant to install the virtual machine required to run the project. 

2. At the command prompt type the following commands

- vagrant up

- vagrant ssh

- cd \vagrant

3. You should now be connected to your vagrant machine and inside the folder \vagrant. Change directory to 'tournament' by

- cd \tournament

4. Copy all source files i.e tournament.py, tournament.sql and tournament_test.py from the project here. 

5. Set up the database to for the project by connecting to psql. At the command prompt type:

- psql

6. Set up the database and views by running the following command at the command prompt 

- \i tournament.sql

7. Exit from psql by (Ctrl +d)

8. At the command prompt run

- python tournament_test.py

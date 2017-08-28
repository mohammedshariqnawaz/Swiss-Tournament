# Swiss Tournament Planner
This is a Python module that uses the PostgreSQL database to keep track of players and matches in a game tournament.The game tournament will use the Swiss system for pairing up players in each round:players are not eliminated, and each player should be paired with another player with the same number of wins, or as close as possible.
This project has two parts: defining the database schema (SQL table definitions), and writing the code that will use it.
### Technology Used:-

Swiss Tournament Planner uses the following to work properly:
* Python 2.7
* PostgreSQL Database
* Virtual Machine (Linux i.e. Ubuntu) with Vagrant configuration already pre-installed.
### Installation:-

* Clone this repo: git clone `https://github.com/mohdshariqnawaz/Swiss-Tournament.git`
* Navigate to the vagrant folder
* Setup the virtual machine by running `vagrant up`
* Log into the VM by running: `vagrant ssh`
* Navigate to the tournament directory: `cd /vagrant/tournament`
* Initialize the database by running: `psql -f tournament.sql`
* To test the database against Udacity's criteria, run: `python tournament_test.py`

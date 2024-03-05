ps aux | grep postgres
#verify if everything is set up

psql -Upostgres -hlocalhost -Wpostgres -p****
#you dont need -W and -p

psql -U postgres -h localhost
#or you can do

su postgres
#now you are user 'postgres'

psql
ps aux | grep postgres
#verify if everything is set up

psql -Upostgres -hlocalhost -Wpostgres -p****
#you dont need -W and -p

psql -U postgres -h localhost
#or you can do

su postgres
#now you are user 'postgres'

psql
# \q

unzip pagila-
cd pagila-
su postgres
psql -U ** -h*** -W ** < pagila-schema.sql
psql -U ** -h*** -W ** < pagila-data.sql
#go to pgAdmin

```sql
/* New query on your db */

SELECT * FROM actor

/* move to local db */

CREATE DATABASE pagila;
\q
```

#now to local db
psql -U postgres -h localhost -W pagila < pagila-schema.sql
psql -U postgres -h localhost -W pagila < pagila-data.sql
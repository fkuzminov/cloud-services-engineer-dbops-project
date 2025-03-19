# DBOps-project

### Create database
```CREATE DATABASE store;```

### Create user for migrations and tests<br>
```CREATE USER <user> WITH PASSWORD '<your password>';```<br>
```GRANT ALL PRIVILEGES ON DATABASE store TO <user>;```
```GRANT ALL PRIVILEGES ON SCHEMA public TO <user>;```
```GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO <user>;```

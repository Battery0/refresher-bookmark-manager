# Bookmark Manager

* Initial Project setup README - this will be updated.


## User Stories
```
As a web user
So that I can see all my web bookmarks
I'd like a web page that displays them all as a list

As a web user
So that I can save a new bookmark
I'd like to be able to add new bookmarks
```

## Initial Domain Model
![Bookmark Manager domain model & User Stories](./public/images/Bookmark_manager_domain_model_1.png)


## Database Setup - PostgresSQL
### Development Environment
Run the following from your terminal

1. Connect to psql: `psql`
2. Create a database: `CREATE DATABASE bookmark_manager;`
3. Connect to the database `\c bookmark_manager;`
4. Run the .sql file to setup the bookmarks table & columns: `\i ./db/migrations/01_create_bookmarks_table.sql`

### Test Environment
1. Connect to psql: `psql`
2. Create a database: `CREATE DATABASE bookmark_manager_test;`
3. Connect to the database `\c bookmark_manager_test;`
4. Run the .sql file to setup the bookmarks table & columns: `\i ./db/migrations/01_create_bookmarks_table.sql`
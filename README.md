# Bookmark Manager

* Initial Project setup README - this will be updated.


## User Stories - Work In Progress
![User Stories](./public/images/user-stories.png)

## Domain Model - Work In Progress
#### Show All Bookmarks
![Show all bookmarks](./public/images/display-all-bookmarks.png)
#### Add new Bookmarks
![Add new bookmarks](./public/images/add-new-bookmarks.png)


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
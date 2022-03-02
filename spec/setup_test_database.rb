require 'pg'

def setup_test_database
  p "setting up test database"
  connection = PG.connect(dbname: "bookmark_manager_test")
  # This deletes the data in the table only. Not the entire database
  connection.exec("TRUNCATE TABLE bookmarks;")
end

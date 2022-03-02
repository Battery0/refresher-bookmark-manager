require 'pg'

class Bookmark

  def all
    if ENV['ENVIRONMENT'] == "test"
      connection = PG.connect(dbname: "bookmark_manager_test")
    else
      connection = PG.connect(dbname: "bookmark_manager")
    end
    result = connection.exec("SELECT * FROM bookmarks;")
    result.map { |record| record["url"] }
  end

  def create(url)
    if ENV['ENVIRONMENT'] == "test"
      connection = PG.connect(dbname: "bookmark_manager_test")
    else
      connection = PG.connect(dbname: "bookmark_manager")
    end
    connection.exec("INSERT INTO bookmarks (url) VALUES ('#{url}');")
  end

end

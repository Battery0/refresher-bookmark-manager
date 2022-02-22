require 'pg'

class Bookmark

  def all
    connection = PG.connect(dbname: "bookmark_manager")
    result = connection.exec("SELECT * FROM bookmarks;")
    result.map { |record| record["url"] }
  end

end
require 'pg'

class Bookmark

  attr_reader :id, :title, :url

  def initialize(id, title, url)
    @id = id
    @title = title
    @url = url
  end

  def self.all
    if ENV['ENVIRONMENT'] == "test"
      connection = PG.connect(dbname: "bookmark_manager_test")
    else
      connection = PG.connect(dbname: "bookmark_manager")
    end
    result = connection.exec("SELECT * FROM bookmarks;")
    result.map do |record| 
      Bookmark.new(record["id"], record["title"], record["url"])
    end
  end

  def self.create(title, url)
    if ENV['ENVIRONMENT'] == "test"
      connection = PG.connect(dbname: "bookmark_manager_test")
    else
      connection = PG.connect(dbname: "bookmark_manager")
    end
    result = connection.exec("INSERT INTO bookmarks (title, url) VALUES ('#{title}', '#{url}')
     RETURNING id, url, title;")
    Bookmark.new(result[0]["id"], result[0]["title"], result[0]["url"])
  end

end

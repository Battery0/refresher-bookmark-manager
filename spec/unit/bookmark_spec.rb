require 'bookmark'

describe Bookmark do
  
  let(:bookmark) { described_class.new }

  describe '#all' do
    it 'returns all the bookmarks' do
      connection = PG.connect(dbname: "bookmark_manager_test")
      connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.google.com/');")
      connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.bbc.com/');")
      connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.youtube.com/');")
      
      expect(bookmark.all).to include("http://www.google.com/", "http://www.bbc.com/", "http://www.youtube.com/")
    end
  end

end

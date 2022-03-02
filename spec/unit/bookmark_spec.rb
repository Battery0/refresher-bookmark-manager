require 'bookmark'

describe Bookmark do
  
  let(:bookmark) { described_class.new }

  describe '#all' do
    it 'returns all the bookmarks' do 
      bookmark.create("http://www.google.com/")
      bookmark.create("http://www.bbc.com/")
      bookmark.create("http://www.youtube.com/")
      expect(bookmark.all).to include("http://www.google.com/", "http://www.bbc.com/", "http://www.youtube.com/")
    end
  end

  describe '#create' do
    it 'creates a new bookmark to add to the database' do
      bookmark.create("https://www.reuters.com/")
      expect(bookmark.all).to include("https://www.reuters.com/")
    end
  end

end

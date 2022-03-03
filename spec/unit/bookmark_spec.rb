require 'bookmark'

describe Bookmark do

  describe '#all' do
    it 'returns all the bookmarks' do 
      Bookmark.create("Google", "http://www.google.com/")
      Bookmark.create("BBC", "http://www.bbc.com/")
      Bookmark.create("YouTube", "http://www.youtube.com/")

      expect(Bookmark.all.length).to eq(3)
      expect(Bookmark.all[0].title).to eq("Google")
      expect(Bookmark.all[0].url).to eq("http://www.google.com/")
      expect(Bookmark.all[1].title).to eq("BBC")
      expect(Bookmark.all[1].url).to eq("http://www.bbc.com/")
      expect(Bookmark.all[2].title).to eq("YouTube")
      expect(Bookmark.all[2].url).to eq("http://www.youtube.com/")
    end
  end

  describe '#create' do
    it 'creates a new bookmark to add to the database' do
      create_new_bookmark = Bookmark.create("Reuters News Agency", "https://www.reuters.com/")

      expect(create_new_bookmark).to be_a(Bookmark)
      expect(create_new_bookmark.title).to eq("Reuters News Agency")
      expect(create_new_bookmark.url).to eq("https://www.reuters.com/")
    end
  end

end

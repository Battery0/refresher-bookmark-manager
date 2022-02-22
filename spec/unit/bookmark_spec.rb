require 'bookmark'

describe Bookmark do

  let(:bookmark) { described_class.new }

  describe '#all' do
    it 'returns all the bookmarks' do
      expect(bookmark.all).to include("http://www.google.com/", "http://www.bbc.com/", "http://www.youtube.com/")
    end
  end

end

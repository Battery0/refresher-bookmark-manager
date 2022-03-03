require 'pg'

feature 'view bookmarks' do

  scenario 'A user can see all bookmarks' do
    Bookmark.create("Google", "http://www.google.com/")
    Bookmark.create("BBC", "http://www.bbc.com/")
    Bookmark.create("YouTube", "http://www.youtube.com/")

    visit('/bookmarks')
    expect(page).to have_content('Bookmark Manager')
    expect(page).to have_link("Google", href: "http://www.google.com/")
    expect(page).to have_link("BBC", href: "http://www.bbc.com/")
    expect(page).to have_link("YouTube", href: "http://www.youtube.com/")
  end

end

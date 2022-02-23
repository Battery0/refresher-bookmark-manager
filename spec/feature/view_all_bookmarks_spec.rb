require 'pg'

feature 'view bookmarks' do

  scenario 'A user can see all bookmarks' do
    connection = PG.connect(dbname: "bookmark_manager_test")
    connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.google.com/');")
    connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.bbc.com/');")
    connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.youtube.com/');")

    visit('/bookmarks')
    expect(page).to have_content('Bookmark Manager')
    expect(page).to have_content('http://www.google.com')
    expect(page).to have_content('http://www.bbc.com')
    expect(page).to have_content('http://www.youtube.com')
  end

end

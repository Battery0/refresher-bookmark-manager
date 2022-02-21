feature 'view bookmarks' do

  scenario 'A user can see all bookmarks' do
    visit('/bookmarks')
    expect(page).to have_content('Bookmark Manager')
    expect(page).to have_content('http://www.google.com')
    expect(page).to have_content('http://www.bbc.com')
    expect(page).to have_content('http://www.youtube.com')
  end

end

feature 'view bookmarks' do

  scenario 'A user can see all bookmarks' do
    visit('/bookmarks')
    expect(page).to have_content('Bookmark Manager')
    expect(page).to have_content('www.google.com')
    expect(page).to have_link(href: "http://www.google.com")
    expect(page).to have_content('www.bbc.com')
    expect(page).to have_link(href: "http://www.bbc.com")
    expect(page).to have_content('www.youtube.com')
    expect(page).to have_link(href: "http://www.youtube.com")
  end

end

feature 'view bookmarks' do

  scenario 'A user can see all bookmarks' do
    visit('/bookmarks')
    expect(page).to have_content('Bookmark Manager')
    expect(page).to have_content('www.google.com')
    page.find(:css, 'a[href="http://www.google.com"]')
    expect(page).to have_content('www.bbc.com')
    page.find(:css, 'a[href="http://www.bbc.com"]')
    expect(page).to have_content('www.youtube.com')
    page.find(:css, 'a[href="http://www.youtube.com"]')
  end

end

feature 'add new bookmark' do

  scenario 'add a new bookmark and display it in the complete list' do
    visit('/bookmarks')
    click_button("Add Bookmark")
    fill_in('Title of URL (this is what will be displayed)', with: "Reuters News Agency")
    fill_in('URL to be bookmarked', with: "https://www.reuters.com/")
    click_button("Submit")
    expect(page).to have_link("Reuters News Agency", href: "https://www.reuters.com/")
  end

end

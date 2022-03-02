feature 'add new bookmark' do

  scenario 'add a new bookmark and display it in the complete list' do
    visit('/bookmarks')
    click_button("Add Bookmark")
    fill_in('Add New Bookmark', with: "https://www.reuters.com/")
    click_button("Submit")
    expect(page).to have_content("https://www.reuters.com/")
  end

end

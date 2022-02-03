feature 'It has a home page' do
  scenario 'Homepage opened' do
    visit('/')
    expect(page).to have_content("Hello there!")
  end
end
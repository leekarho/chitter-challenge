feature 'viewing chitter' do
  scenario 'visiting the index page' do
    visit('/')
    expect(page).to have_content "welcome to chitter"
  end
end

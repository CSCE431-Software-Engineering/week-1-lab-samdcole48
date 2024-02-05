require 'rails_helper'

RSpec.describe "CreatingBooks", type: :system do
  before do
    driven_by(:rack_test)
  end

 it 'creates a new book' do
  visit new_book_path
  fill_in 'Title', with: 'The Great Gatsby'
  click_on 'Create Book'
  expect(page).to have_content('The Great Gatsby')
 end
end

require_relative '../spec_helper'

feature 'Form' do
  scenario 'fills out a form' do
    visit root_path
    
    fill_in 'Name', with: "Jane Doe"
    fill_in 'Email', with: "jane@gmail.com"
    fill_in 'Password', with: "12345"
    click_button 'Login'

    within 'h1' do
      expect(page).to have_content 'Welcome Jane Doe'
    end
  end
end



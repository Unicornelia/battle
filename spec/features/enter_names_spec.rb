require 'spec_helper'

feature 'entering names' do
  scenario 'users can enter their names' do
    visit '/'
    fill_in :player1_name, with: 'A'
    fill_in :player2_name, with: 'B'
    click_button 'Submit'
    expect(page).to have_content 'A vs. B'
  end
end

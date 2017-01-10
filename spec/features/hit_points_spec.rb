require 'spec_helper'

feature 'view hitpoints' do
  scenario 'see player 2 hitpoints' do
    visit '/'
    fill_in :player1_name, with: 'A'
    fill_in :player2_name, with: 'B'
    click_button 'Submit'
    expect(page).to have_content 'A: 100'
  end

  scenario 'see player 1 hitpoints' do
    visit '/'
    fill_in :player1_name, with: 'A'
    fill_in :player2_name, with: 'B'
    click_button 'Submit'
    expect(page).to have_content 'B: 100'
  end
end

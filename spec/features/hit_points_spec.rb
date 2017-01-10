require 'spec_helper'

feature 'view hitpoints' do
  scenario 'see player 2 hitpoints' do
    sign_in_and_play
    expect(page).to have_content 'A: 100'
  end

  scenario 'see player 1 hitpoints' do
    sign_in_and_play
    expect(page).to have_content 'B: 100'
  end
end

require 'spec_helper'

feature 'entering names' do
  scenario 'users can enter their names' do
    sign_in_and_play
    expect(page).to have_content 'A vs. B'
  end
end

require 'spec_helper'

feature 'prints Lose' do
  scenario 'once you reached 0 HP points, you lose' do
    sign_in_and_play
    visit '/hit'
    click_button('Hit')
    expect(page).to have_content("B: you lose")
  end
end

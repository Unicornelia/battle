require 'spec_helper'

feature 'prints Lose' do
  scenario 'once you reached 0 HP points, you lose' do
    sign_in_and_attack_second_turn
    click_button('Next')
    click_button('Hit')
    expect(page).to have_content("B: you lose")
  end
end

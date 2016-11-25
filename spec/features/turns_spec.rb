require 'spec_helper'

feature "Switch turns", :type => :feature do
  scenario "player being attacked changes" do
    sign_in_and_play
    click_button('Hit')
    expect(page).to have_content("B attacked A")
  end
end

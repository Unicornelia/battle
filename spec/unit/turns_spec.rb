require 'spec_helper'

feature "Switch turns", :type => :feature do
  scenario "player being attacked changes" do
    sign_in_and_attack_second_turn
    expect(page).to have_content("B attacked A")
  end
end

# RR - you're mixing unit and feature tests in this directory. You might want to
# consider having separate "unit" and "feature" folders inside your spec directory.
# Your feature tests could also all live in the same file since there's not that many.
# This is good BTW, because ideally a front-end test should be a test of common
# user flows rather than a specific aspect of the application.
# Those should already be covered by unit tests (test pyramid).

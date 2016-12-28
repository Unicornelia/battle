require 'player'
require 'spec_helper'

feature Player do
# RR - not a feature. This is a unit test; you want a "describe" block here.
  before(:each) do
    sign_in_and_play
  end
  # RR - here you do actually use capybara. Since you only actually use it in
  # one test it's overkill to use before(:each).

  subject(:anna) { Player.new('A') }
  subject(:life) { Player.new('B') }

  describe '#name' do
    it 'returns a players name' do
      expect(anna.name).to eq 'A'
    end
  end

  describe '#hp_points' do
    it 'checks that player has HP points' do
      expect(anna.health_points).to eq described_class::INITIAL_HP
    end
  end

  describe '#receive_damage' do
    it 'an attack reduces playes2\'s HP points by 10' do
      click_button('Hit')
      expect{life.receive_damage}.to change{life.health_points}.by(-10)
    end
  end
  # RR - keep your unit tests separate from your feature tests. Your unit tests test
  # a single class in isolation; the feature tests should test the entire app
  # running in its ecosystem.
end

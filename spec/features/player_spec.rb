require 'player'
require 'spec_helper'

feature Player do


  before(:each) do
    sign_in_and_play
  end

  subject(:anna) { Player.new('Anna') }
  subject(:life) { Player.new('Life') }

  describe '#name' do
    it 'returns a players name' do
      expect(anna.name).to eq 'Anna'
    end
  end

  describe '#hp_points' do
    it 'checks that player has HP points' do
      expect(anna.hp_points).to eq described_class::HP_POINTS
    end
  end

  describe '#receive_damage' do
    it 'an attack reduces playes2\'s HP points by 10' do
      click_button('Hit')
      expect{life.receive_damage}.to change{life.hp_points}.by(-10)
    end
  end


end

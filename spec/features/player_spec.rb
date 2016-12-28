require 'player'
require 'spec_helper'

describe 'Damaging' do

  subject(:anna) { Player.new('A') }
  subject(:life) { Player.new('B') }

  describe '#receive_damage' do
    it 'an attack reduces playes2\'s HP points by 10' do
      sign_in_and_play
      click_button('Hit')
      expect{life.receive_damage}.to change{life.health_points}.by(-10)
    end
  end
end

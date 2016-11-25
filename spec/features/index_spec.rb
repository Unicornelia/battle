require 'spec_helper'
require 'player'


feature Battle do

  before(:each) do
    sign_in_and_play
  end

  context 'hitpoints' do
    it 'checks player 2\'s hitpoints' do
      expect(page).to have_content(Player::HP_POINTS)
    end

    it 'returns the confirmation when Hit button gets clicked on' do
      click_button('Hit')
      expect(page).to have_content('A attacked B')
    end


  end
end

def sign_in_and_play
  visit '/'
  fill_in('player1_name', with: 'A')
  fill_in('player2_name', with: 'B')
  click_button('Submit')
end

def sign_in_and_attack_second_turn
  sign_in_and_play
  click_button('Hit')
  click_button('Next')
  click_button('Hit')
end

def sign_in_and_destroy
17.times { click_button('Next')
  click_button('Hit') }
end

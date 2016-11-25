def sign_in_and_play
  visit '/'
  fill_in('player1_name', with: 'A')
  fill_in('player2_name', with: 'B')
  click_button('Submit')
end

def sign_in_and_player1_attacks
  sign_in_and_play
  visit '/hit'
end

# def sign_in_and_attack_player1_10_times
#
# end

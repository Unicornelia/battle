feature 'attacking' do
  scenario 'attack player 2' do
    sign_in_and_play
    click_button 'Hit'
    expect(page).to have_content 'A attacked B'
  end
end

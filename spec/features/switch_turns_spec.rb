require 'game'
require './spec/features/web_helpers.rb'

describe 'Switch turns' do
  context 'show curent turn' do
    scenario 'at the beginning of the game' do
      sign_in_and_play
      expect(page).to have_content "Chris's turn"
    end
  end

    scenario 'after player 1 attacks' do
      sign_in_and_play
      click_button 'Attack'
      click_link 'OK'
      expect(page).not_to have_content "Chris's turn"
      expect(page).to have_content "Ben's turn"
    end
end

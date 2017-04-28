feature "Hit points" do
  scenario "see player 2 hit points" do
    sign_in_and_play
    expect(page).to have_content 'Chris: 100HP'
    end


  scenario "see player 1 hit points" do
    sign_in_and_play
    expect(page).to have_content 'Ben: 100HP'
    end
end

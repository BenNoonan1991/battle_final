feature "Enter names" do
  scenario "Filling in names in a form" do
    sign_in_and_play
    expect(page).to have_content "Chris"
    expect(page).to have_content "Ben"
  end
end

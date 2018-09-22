
feature 'homepage' do
  scenario 'the homepage contains the title Rock Paper Scissors' do
    visit '/'
    expect(page).to have_content 'Rock Paper Scissors'
  end

  scenario 'has a button called single player that takes you to a single player game' do
    visit '/'
    click_button 'singleplayer'
    expect(page).to have_content "Rock Paper Scissors - Single Player"
  end
end

feature 'singleplayer' do
  scenario 'lets you enter your name into the single player game' do
    visit '/'
    click_button 'singleplayer'
    fill_in 'name', with: 'Dwayne Johnson'
    click_button 'submit'
    expect(page).to have_content 'Welcome Dwayne Johnson, Please enter your move:'
  end
end

feature 'RPS - singleplayer' do
  scenario 'has a button called rock' do
    visit '/'
    click_button 'singleplayer'
    fill_in 'name', with: 'Dwayne Johnson'
    click_button 'submit'
    expect(page).to have_button 'rock'
  end

  scenario 'has a button called paper' do
    visit '/'
    click_button 'singleplayer'
    fill_in 'name', with: 'Dwayne Johnson'
    click_button 'submit'
    expect(page).to have_button 'paper'
  end

  scenario 'has a button called scissors' do
    visit '/'
    click_button 'singleplayer'
    fill_in 'name', with: 'Dwayne Johnson'
    click_button 'submit'
    expect(page).to have_button 'scissors'
  end
end

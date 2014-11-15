require 'spec_helper'

describe 'social interaction is possible' do
  it 'you can leave rude comments,' do
    _add_a_photo
    expect(page).to have_link 'comment'
  end

  it 'if you want, or something more positive' do
    _add_a_photo
    click_link 'comment'
    fill_in 'comment', with: 'test comment'
    click_button 'Comment'
    expect(page).to have_content 'test comment'
  end

  it 'after all your username is going to be added' do
    _add_a_comment
    expect(page).to have_content 'by test'   
  end

  xit 'I know what you are thinking. but no you cant spam the site' do
    
  end
end
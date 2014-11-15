require 'spec_helper'

describe 'Like a photo' do

  before(:each) do
    _add_a_photo
  end

  it 'there is a button for that' do
    expect(page).to have_content('❤')
  end

  xit 'a logged in user can like a photo' do
    click_link '❤'
    expect(page).to have_content('❤ test')
  end

end
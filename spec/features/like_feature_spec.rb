require 'spec_helper'

describe 'Like a photo' do

  before(:each) do
    _add_a_photo
  end

  it 'there is a button for that' do
    expect(page).to have_content('&#10084;')
  end

end
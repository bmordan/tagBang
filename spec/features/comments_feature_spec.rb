require 'spec_helper'

describe 'social interaction is possible' do
  it 'you can leave rude comments' do
    _add_a_photo
    expect(page).to have_link 'comment'
  end

  it 'you get a box' do
    _add_a_photo
    expect(page).to have_link 'comment'
  end
end
require 'spec_helper'

describe 'Earn money from your photos' do

  before(:each) do

  end

  it 'click on the £' do
    visit '/'
    _add_a_photo
    expect(page).to have_link '£'
  end

  it 'you enter your payment details' do
    visit '/'
    _add_a_photo
    click_link '£'
    expect(current_path).to eq '/charges/new'
  end
end
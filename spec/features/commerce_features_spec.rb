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

  it 'shows you the price of the photo' do
    visit '/'
    _login_testuser
    attach_file('post[image]',File.join(Rails.root, '/spec/testImageFiles/13-percent.jpg'))
    fill_in 'price', with: '8'
    click_button 'Bang'
    click_link '£'
    expect(page).to have_content '£8.00'
  end
end
require 'spec_helper'

describe 'the core of this site is the photos' do

  it 'if you dont have any photos. its ok' do
    visit '/'
    _login_testuser
    expect(page).to have_content 'Welcome to TagBang. Lets start!'
  end

  it 'because you can add photos' do
    visit '/'
    _login_testuser
    expect(page).to have_css 'form'
  end

  it 'to your account' do
    visit '/'
    _login_testuser
    attach_file('post[image]',File.join(Rails.root, '/spec/testImageFiles/13-percent.jpg'))
    click_button 'Bang'
    expect(current_path).to eq posts_path
  end
end
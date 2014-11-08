require 'spec_helper'

describe 'tag bang. instagram for skaters' do

  it 'you can see the name of the site' do
    visit '/'
    expect(page).to have_content('TagBang')
  end

  it 'you have to log in' do
    visit '/'
    expect(page).to have_link 'Log in'
  end

  it 'when you are not Logged in you dont see Log out' do
    expect(page).not_to have_link 'Log out'
  end

  it 'so start by signing up' do
    _signup_testuser
    expect(page).to have_content 'You have signed up successfully'
  end

  it 'or just Log in if you already belong to TagBang' do
    _login_testuser
    expect(page).to have_content 'Log out'
  end

end
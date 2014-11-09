require 'spec_helper'

describe 'the core of this site is the photos' do

  it 'if you dont have any photos. its ok' do
    visit '/'
    _login_testuser
    expect(page).to have_content 'Welcome to TagBang. Lets start!'
  end

  it 'users can add photos' do
    visit '/'
    _login_testuser
    expect(page).to have_css 'form'
  end
end
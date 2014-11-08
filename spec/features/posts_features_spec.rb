require 'spec_helper'

describe 'the core of this site is the photos' do
  it 'which users can see' do
    visit '/'
    _login_testuser
    expect(page).to have_css 'img'
  end
end
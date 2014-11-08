require 'spec_helper'

describe 'tag bang. instagram for skaters' do
  it 'you can see the name of the site' do
    visit '/'
    expect(page).to have_content('TagBang')
  end
end
require 'spec_helper'

RSpec.describe User, :type => :model do
  it 'gives you a username from your email address' do
    _create_testuser
    user = User.first
    expect(user.handle).to eq 'test'
  end
end
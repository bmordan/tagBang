require 'spec_helper'


RSpec.describe Like, :type => :model do

  it 'adds a like' do
    Like.create(user_id: 1,post_id: 1)
    like = Like.first
    expect(like.user_id).to eq(1)
  end

  it 'counts the likes for a photo' do
    Like.create(user_id: 1,post_id: 1)
    Like.create(user_id: 2,post_id: 1)
    Like.create(user_id: 2,post_id: 2)
    expect(Like.this_photo(1)).to eq(2)
  end

end
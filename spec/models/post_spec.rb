require 'spec_helper'


RSpec.describe Post, :type => :model do
  
  it 'has a price' do
    Post.create(price: 0.00)
    post = Post.first
    expect(post.price).to eq(0.00)
  end

  it 'has a nice price' do
    Post.create(price: 0.00)
    post = Post.first
    expect(post.nice_price).to eq('£0.00')
  end

end
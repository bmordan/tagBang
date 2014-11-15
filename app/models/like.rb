class Like < ActiveRecord::Base

  belongs_to :post
  belongs_to :user

  def self.this_photo(photo_id)
    self.where(post_id: photo_id).count
  end
end

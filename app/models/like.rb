class Like < ActiveRecord::Base

  belongs_to :post
  belongs_to :user

  validates_uniqueness_of :post_id, :scope => :user_id

  def self.this_photo(photo_id)
    self.where(post_id: photo_id).count
  end

end

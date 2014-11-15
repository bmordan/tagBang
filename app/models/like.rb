class Like < ActiveRecord::Base

  belongs_to :post
  belongs_to :user

  validates_uniqueness_of :user_id, :scope => :post_id

  def self.this_photo(photo_id)
    self.where(post_id: photo_id).count
  end

  def self.user_list(photo_id)
    ids = self.where(post_id: photo_id)
    users = []
    ids.each {|id| users << User.find(id.user_id).handle}
    users
  end

end

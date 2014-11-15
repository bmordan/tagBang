class Comment < ActiveRecord::Base
  
  belongs_to :post
  validates_uniqueness_of :post_id, :scope => :handle

end

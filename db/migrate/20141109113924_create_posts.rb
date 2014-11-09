class CreatePosts < ActiveRecord::Migration
  def change
      drop_table :posts
    create_table :posts do |t|
      t.string :comment

      t.timestamps
    end
  end
end

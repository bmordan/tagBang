class AddHandleToComments < ActiveRecord::Migration
  def change
    add_column :comments, :handle, :string
  end
end

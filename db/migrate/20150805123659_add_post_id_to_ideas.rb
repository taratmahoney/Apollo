class AddPostIdToIdeas < ActiveRecord::Migration
  def change
    add_column :ideas, :post_id, :integer
  end
end

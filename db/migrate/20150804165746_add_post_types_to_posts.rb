class AddPostTypesToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :feedback, :boolean
    add_column :users, :crowdfunding, :boolean
    add_column :users, :idea, :boolean
  end
end

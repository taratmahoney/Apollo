class RemoveUsersBooleansAndAddPostsTypes < ActiveRecord::Migration
  def change
    add_column :posts, :crowdfunding, :boolean
    add_column :posts, :idea, :boolean
    remove_column :users, :crowdfunding, :boolean
    remove_column :users, :idea, :boolean
  end
end

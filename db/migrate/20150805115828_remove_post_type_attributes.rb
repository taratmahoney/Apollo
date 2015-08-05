class RemovePostTypeAttributes < ActiveRecord::Migration
  def change
    remove_column :posts, :crowdfunding, :boolean
    remove_column :posts, :idea, :boolean
    remove_column :posts, :feedback, :boolean
  end
end

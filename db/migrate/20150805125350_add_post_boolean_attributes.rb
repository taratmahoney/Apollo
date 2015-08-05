class AddPostBooleanAttributes < ActiveRecord::Migration
  def change
    add_column :posts, :crowdfunding, :boolean
    add_column :posts, :idea, :boolean
    add_column :posts, :feedback, :boolean
  end
end

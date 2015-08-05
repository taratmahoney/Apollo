class AddPostIdToFeedbacks < ActiveRecord::Migration
  def change
    add_column :feedbacks, :post_id, :integer

  end
end

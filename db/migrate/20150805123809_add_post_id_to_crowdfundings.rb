class AddPostIdToCrowdfundings < ActiveRecord::Migration
  def change
    add_column :crowdfundings, :post_id, :integer
  end
end

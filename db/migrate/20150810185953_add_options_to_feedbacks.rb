class AddOptionsToFeedbacks < ActiveRecord::Migration
  def change
    add_column :feedbacks, :option, :string
    remove_column :feedbacks, :question, :string
  end
end

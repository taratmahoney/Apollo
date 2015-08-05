class AddFeedbacksIdToOptions < ActiveRecord::Migration
  def change
      add_column :options, :feedback_id, :integer
  end
end

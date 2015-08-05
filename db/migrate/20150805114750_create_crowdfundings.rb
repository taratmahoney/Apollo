class CreateCrowdfundings < ActiveRecord::Migration
  def change
    create_table :crowdfundings do |t|
      t.float :amounts

      t.timestamps
    end
  end
end

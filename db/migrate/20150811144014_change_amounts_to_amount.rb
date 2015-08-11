class ChangeAmountsToAmount < ActiveRecord::Migration
  def change
    remove_column :crowdfundings, :amounts, :string
    add_column :crowdfundings, :amount, :string
  end
end

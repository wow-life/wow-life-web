class AlterRemoveColumnEmiDate < ActiveRecord::Migration[4.2]
  def change
    remove_column :debts, :emi_date
  end
end

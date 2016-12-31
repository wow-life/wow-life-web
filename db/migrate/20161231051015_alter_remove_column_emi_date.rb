class AlterRemoveColumnEmiDate < ActiveRecord::Migration
  def change
    remove_column :debts, :emi_date
  end
end

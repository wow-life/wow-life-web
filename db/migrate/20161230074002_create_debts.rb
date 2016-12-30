class CreateDebts < ActiveRecord::Migration
  def change
    create_table :debts do |t|
      t.string  :name,                null: false, default: ""
      t.decimal :amount,              null: false, default: 0
      t.string  :guarantee_name
      t.date    :date_of_issue,       null: false
      t.integer :emi_amount,          null: false, default: 0
      t.integer :no_of_installments,  null: false, default: 0
      t.date    :emi_date,            null: false
      t.string  :status
      t.string  :mode_of_payment,     null: false, default: ""
      t.integer :initial_interest,    null: false, default: 0
      t.text    :desc
      t.timestamps                    null: false
    end
  end
end

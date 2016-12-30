ActiveAdmin.register Debt do

  menu priority: 1, label: "Accounts"

  permit_params :status, :guarantee_name, :desc

  index do
    selectable_column
    column :name
    column :amount
    column :date_of_issue
    column :emi_amount
    column :no_of_installments
    column :emi_date
    column :mode_of_payment
    column :initial_interest
    column :status
    actions
  end

end

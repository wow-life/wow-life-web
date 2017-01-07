ActiveAdmin.register Debt do

  menu priority: 1, label: "Accounts"

  permit_params :status, :guarantee_name, :desc, :name, :amount, :date_of_issue, :emi_amount, :no_of_installments, :mode_of_payment, :initial_interest, :status

  index do
    selectable_column
    column :name
    column :amount
    column :date_of_issue
    column :emi_amount
    column :no_of_installments
    column :mode_of_payment
    column :initial_interest
    column :status
    actions
  end

  form do |f|
    f.inputs "Debts Details" do
      f.input :name
      f.input :amount
      f.input :date_of_issue
      f.input :emi_amount
      f.input :no_of_installments
      f.li do
        f.label "Mode Of Payment"
        f.select :mode_of_payment, (["RTGS", "NEFT", "IMPS", "Cheque", "Cash"])
      end
      f.input :initial_interest
      f.li do
        f.label "Status"
        f.select :status, (["IN PROGRESS", "COMPLETED"])
      end
      actions
    end
  end

end
ActiveAdmin.register_page "Dashboard" do

  menu false


  content title: proc { I18n.t("active_admin.dashboard") } do
    @debts = Debt.all
    @totalDebts = 0
    @debts.each do |debt|
      if (debt.status != "COMPLETED")
        @totalDebts+=1
      end
    end
    h1 "No of Debts Pending: #{@totalDebts}"
  end
end
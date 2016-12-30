class Debt < ActiveRecord::Base
  validates_presence_of :name,
                        :amount,
                        :date_of_issue,
                        :emi_amount,
                        :no_of_installments,
                        :emi_date,
                        :mode_of_payment,
                        :initial_interest
end

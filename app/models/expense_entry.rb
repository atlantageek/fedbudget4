class ExpenseEntry < ActiveRecord::Base
  belongs_to :expense
  belongs_to :scenario
end

class Expense < ActiveRecord::Base
  has_many :expense_entries
end

class Scenario < ActiveRecord::Base
  has_many :income_entries
  has_many :expense_entries
  belongs_to :facebook

  def generate_budget
    Income.find(:all).each do |inc|
      ent=IncomeEntry.create(:entry => inc.orig_rate, :income => inc, :scenario=> self)
      ent.save!
    end
    Expense.find(:all).each do |exp|
      ent=ExpenseEntry.create(:entry => exp.orig_expense, :expense => exp, :scenario=> self)
      ent.save!
    end

  end
end

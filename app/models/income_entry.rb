class IncomeEntry < ActiveRecord::Base
  belongs_to :income
  belongs_to :scenario
end

require 'spec_helper'

describe Scenario do
  before(:each) do
    @sc=Scenario.create(:name => 'test1')
    @sc.save!
    @sc.generate_budget()
    puts @sc.inspect()
  end
  it ".generate_budget expenses" do
    puts @sc.inspect()
    @sc.expense_entries.count.should == 10
  end
  it ".generate_budget incomes" do
    @sc.income_entries.count.should == 10
  end
end

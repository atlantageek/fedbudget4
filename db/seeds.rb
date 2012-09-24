# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Emanuel', :city => cities.first)
Income.create(
  [
    {:name => '10% Tax Bracket', :orig_income => 15_092_670 , :descr => "2012's 10% tax bracket", :orig_rate => 10,:type => 'pct', :ref=> 'bracket10', :editable => true},   #10%
    {:name => '15% Tax Bracket', :orig_income => 157306037, :descr => "Current 15% tax bracket", :orig_rate => 15,:type => 'pct', :ref => 'bracket15', :editable => true}, #15%
    {:name => '25% Tax Bracket', :orig_income => 274328164, :descr => "Current 25% tax bracket",:orig_rate => 25,:type => 'pct', :ref => 'bracket25', :editable => true}, #25%
    {:name => '28% Tax Bracket', :orig_income => 119085422, :descr => "Current 28% tax bracket", :orig_rate => 28,:type => 'pct', :ref => 'bracket28', :editable => true},   #28%
    {:name => '33% Tax Bracket', :orig_income => 98477349, :descr => "Current 33% tax bracket", :orig_rate => 33,:type => 'pct', :ref => 'bracket33', :editable => true},   #33%
    {:name => '35% Tax Bracket', :orig_income => 270684118, :descr => "Current 35% tax bracket", :orig_rate => 35,:type => 'pct', :ref => 'bracket35', :editable => true},   #35%
    {:name => 'Capital Gains', :orig_income => 47345378, :descr => "Current capital gains" , :orig_rate => 15,:type => 'pct', :ref => 'capital_gains', :editable => true},  #15% capital gains
    {:name => 'Gasoline Tax', :orig_income => 129557444, :descr => "Current capital gains" , :orig_rate => 0.18,:type => 'gallon', :ref => 'gasoline_tax', :editable => true},  #15% capital gains
    {:name => 'Corporate Rate', :orig_income => 746093750, :descr => "Current capital gains" , :orig_rate => 25,:type => 'pct', :ref => 'corporate_tax', :editable => true},  #15% capital gains
    {:name => 'Payroll Taxes', :orig_income => 864000000, :descr => "Payroll Taxes" , :orig_rate => 25,:type => 'pct', :ref => 'payroll_tax', :editable => true},  #15% capital gains
    {:name => 'Misc.', :orig_income => 184600000, :descr => "Payroll Taxes" , :orig_rate => nil,:type => 'fixed', :ref => 'misc_income', :editable => false}   #15% capital gains
  ])
Expense.create(
  [ {:name => 'Department of Defense', :orig_expense => 672_900_000, :ref => 'defense', :editable => true},
    {:name => 'Department of Health and Human services', :orig_expense => 949_900_000, :ref => 'health', :editable => true},
    {:name => 'Department of Education', :orig_expense => 71900000, :ref => 'education', :editable => true},
    {:name => 'Department of Veteran Affairs', :orig_expense => 139_700_000, :ref => 'vetran', :editable => true},
    {:name => 'Department of Housing', :orig_expense => 46_300_000, :ref => 'housing', :editable => true},
    {:name => 'Department of State', :orig_expense => 59_500_000, :ref => 'state', :editable => true},
    {:name => 'Department of Homeland Security', :orig_expense => 55_400_000, :ref => 'homeland', :editable => true},
    {:name => 'Department of Energy', :orig_expense => 35_000_000, :ref => 'energy', :editable => true},
    {:name => 'Department of Justice', :orig_expense => 36_500_000, :ref => 'justice', :editable => true},
    {:name => "Department of Agriculture",:orig_expense => 154_500_000 , :ref => 'agriculture', :editable => true},
    {:name => "National Aeronautics and Space Administration",:orig_expense => 17_800_000 , :ref => 'nasa', :editable => true},
    {:name => "National Intelligence Program" ,:orig_expense => 52_600_000 , :ref => 'intelligence', :editable => true},
    {:name => "Department of Transportation" ,:orig_expense => 98_500_000 , :ref => 'transportation', :editable => true},
    {:name => "Department of the Treasury" ,:orig_expense => 110_300_000 , :ref => 'treasury', :editable => true},
    {:name => "Department of the Interior" ,:orig_expense => 13_500_000 , :ref => 'interior', :editable => true},
    {:name => "Department of Labor" ,:orig_expense => 101_700_000 , :ref => 'labor', :editable => true},
    {:name => "Social Security Administration" ,:orig_expense => 882_700_000 , :ref => 'ss', :editable => true},
    {:name => "Department of Commerce" ,:orig_expense => 9_000_000 , :ref=> 'commerce', :editable => true},
    {:name => "Environmental Protection Agency" ,:orig_expense => 8_900_000 , :ref => 'EPA', :editable => true},
    {:name => "National Science Foundation" ,:orig_expense => 7_500_000 , :ref => 'NSF', :editable => true},
    {:name => "Small Business Administration", :orig_expense => 1_400_000 , :ref => 'sba', :editable => true},
    {:name => "Corporation for National and Community Service", :orig_expense => 1_100_000 , :ref => 'community_service', :editable => true},
    {:name => "Net interest", :orig_expense => 246_000_000 , :ref => 'interest', :editable => false},
    {:name => "Army Corps " ,:orig_expense => 8_200_000, :ref  => 'civil_eng', :editable => true},
    {:name => "Other", :orig_expense => 29_500_000 , :ref => 'other', :editable => false}])

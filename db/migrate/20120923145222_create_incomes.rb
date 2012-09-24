class CreateIncomes < ActiveRecord::Migration
  def self.up
    create_table :incomes do |t|
      t.string  :name
      t.string  :descr
      t.integer  :orig_income
      t.float   :orig_rate 
      t.string :change_type
      t.string :ref
      t.boolean :editable

      t.timestamps
    end
  end

  def self.down
    drop_table :incomes
  end
end

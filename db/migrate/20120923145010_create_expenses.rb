class CreateExpenses < ActiveRecord::Migration
  def self.up
    create_table :expenses do |t|
      t.string :name
      t.string :descr
      t.integer :orig_expense
      t.string :ref
      t.boolean :editable

      t.timestamps
    end
  end

  def self.down
    drop_table :expenses
  end
end

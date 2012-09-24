class CreateExpenseEntries < ActiveRecord::Migration
  def self.up
    create_table :expense_entries do |t|
      t.integer :scenario_id
      t.integer :expense_id
      t.float :entry

      t.timestamps
    end
  end

  def self.down
    drop_table :expense_entries
  end
end

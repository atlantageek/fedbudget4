class CreateIncomeEntries < ActiveRecord::Migration
  def self.up
    create_table :income_entries do |t|
      t.integer :scenario_id
      t.integer :income_id
      t.float :entry

      t.timestamps
    end
  end

  def self.down
    drop_table :income_entries
  end
end

class CreateTimeEntries < ActiveRecord::Migration
  def change
    create_table :time_entries do |t|
      t.timestamp :started_at
      t.integer :length
      t.boolean :active

      t.timestamps
    end
  end
end

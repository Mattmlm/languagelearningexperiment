class CreateUserEntries < ActiveRecord::Migration
  def change
    create_table :user_entries do |t|
      t.string :mapping
      t.text :entry

      t.timestamps
    end
  end
end

class CreateIterativeChains < ActiveRecord::Migration
  def change
    create_table :iterative_chains do |t|
      t.integer :num_users
      t.text :chain

      t.timestamps
    end
  end
end

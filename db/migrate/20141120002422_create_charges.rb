class CreateCharges < ActiveRecord::Migration
  def change
    create_table :charges do |t|
      t.integer :amount
      t.integer :user_id
      t.integer :goal_id
      t.integer :charity_id
      t.string :transaction
      t.string :status

      t.timestamps
    end
  end
end

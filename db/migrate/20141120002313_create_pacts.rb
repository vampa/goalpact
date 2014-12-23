class CreatePacts < ActiveRecord::Migration
  def change
    create_table :pacts do |t|
      t.integer :amount
      t.integer :type
      t.integer :target
      t.integer :goal_id
      t.integer :status

      t.timestamps
    end
  end
end

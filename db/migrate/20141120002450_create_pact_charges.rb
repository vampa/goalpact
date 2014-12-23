class CreatePactCharges < ActiveRecord::Migration
  def change
    create_table :pact_charges do |t|
      t.integer :pact_id
      t.integer :charge_id

      t.timestamps
    end
  end
end

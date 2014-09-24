class CreateGoals < ActiveRecord::Migration
  def change
    create_table :goals do |t|
      t.integer :type
      t.string :name
      t.string :message
      t.datetime :event_date
      t.integer :charity_id
      t.integer :person_id
      t.integer :status

      t.timestamps
    end
  end
end

class CreateResults < ActiveRecord::Migration
  def change
    create_table :results do |t|
      t.integer :time
      t.integer :month
      t.integer :year
      t.boolean :previous

      t.timestamps
    end
  end
end

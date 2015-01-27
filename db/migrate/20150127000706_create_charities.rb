class CreateCharities < ActiveRecord::Migration
  def change
    create_table :charities do |t|
      t.string :name
      t.string :blurb
      t.string :subdomain

      t.timestamps
    end
  end
end

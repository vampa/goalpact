class AddFieldsToUser < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :twitter_id, :string
    add_column :users, :facebook_id, :string
  end
end

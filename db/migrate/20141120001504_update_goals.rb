class UpdateGoals < ActiveRecord::Migration
  def change
    remove_column :goals, :person_id
    add_column :goals, :user_id, :integer
    add_column :goals, :event_city, :string
    add_column :goals, :event_state, :string
    remove_column :goals, :message
    add_column :goals, :description, :text
    add_column :goals, :first_time, :boolean
    add_column :goals, :target_time, :integer
  end
end

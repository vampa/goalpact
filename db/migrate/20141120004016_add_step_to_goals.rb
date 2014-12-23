class AddStepToGoals < ActiveRecord::Migration
  def change
    add_column :goals, :step, :integer
  end
end

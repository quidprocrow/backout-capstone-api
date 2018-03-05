class AddWisdomModifierToSteps < ActiveRecord::Migration[5.1]
  def change
    add_column :steps, :wisdommodifier, :integer
  end
end

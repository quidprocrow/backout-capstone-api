class AddHopeModifierToSteps < ActiveRecord::Migration[5.1]
  def change
    add_column :steps, :hopemodifier, :integer
  end
end

class AddSeedstepToWords < ActiveRecord::Migration[5.1]
  def change
    add_column :words, :seedstep, :integer
  end
end

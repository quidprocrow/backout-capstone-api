class AddSeedidToWords < ActiveRecord::Migration[5.1]
  def change
    add_column :words, :seedid, :integer
  end
end

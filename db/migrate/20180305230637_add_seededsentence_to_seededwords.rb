class AddSeededsentenceToSeededwords < ActiveRecord::Migration[5.1]
  def change
    add_reference :seededwords, :seededsentence, foreign_key: true
  end
end

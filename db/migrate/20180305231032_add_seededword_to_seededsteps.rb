class AddSeededwordToSeededsteps < ActiveRecord::Migration[5.1]
  def change
    add_reference :seededsteps, :seededword, foreign_key: true
  end
end

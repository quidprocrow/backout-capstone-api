class RemoveWordFromSteps < ActiveRecord::Migration[5.1]
  def change
    remove_reference :steps, :word, foreign_key: true
  end
end

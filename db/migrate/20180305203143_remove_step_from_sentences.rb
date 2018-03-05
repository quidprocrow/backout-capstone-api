class RemoveStepFromSentences < ActiveRecord::Migration[5.1]
  def change
    remove_reference :sentences, :step, foreign_key: true
  end
end

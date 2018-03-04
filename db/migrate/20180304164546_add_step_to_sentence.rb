class AddStepToSentence < ActiveRecord::Migration[5.1]
  def change
    add_reference :sentences, :step, foreign_key: true
  end
end

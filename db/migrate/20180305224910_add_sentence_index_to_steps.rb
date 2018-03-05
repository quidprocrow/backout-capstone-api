class AddSentenceIndexToSteps < ActiveRecord::Migration[5.1]
  def change
    add_column :steps, :sentenceindex, :integer
  end
end

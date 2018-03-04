class AddWordToSteps < ActiveRecord::Migration[5.1]
  def change
    add_reference :steps, :word, foreign_key: true
  end
end

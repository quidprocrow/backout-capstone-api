class AddGameToSentences < ActiveRecord::Migration[5.1]
  def change
    add_reference :sentences, :game, foreign_key: true
  end
end

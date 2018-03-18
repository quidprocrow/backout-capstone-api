class AddSentencesToGames < ActiveRecord::Migration[5.1]
  def change
    add_column :games, :sentences, :string, array: true, default: []
  end
end

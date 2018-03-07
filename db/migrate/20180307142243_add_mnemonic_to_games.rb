class AddMnemonicToGames < ActiveRecord::Migration[5.1]
  def change
    add_column :games, :mnemonic, :string
  end
end

class CreateGames < ActiveRecord::Migration[5.1]
  def change
    create_table :games do |t|
      t.integer :hope
      t.integer :wisdom

      t.timestamps
    end
  end
end

class CreateSentences < ActiveRecord::Migration[5.1]
  def change
    create_table :sentences do |t|
      t.boolean :active

      t.timestamps
    end
  end
end

class CreateSeededsteps < ActiveRecord::Migration[5.1]
  def change
    create_table :seededsteps do |t|
      t.integer :redact, default: [], array: true
      t.integer :sentenceindex
      t.integer :hopemodifier
      t.integer :wisdommodifier

      t.timestamps
    end
  end
end

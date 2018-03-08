class CreateSteps < ActiveRecord::Migration[5.1]
  def change
    create_table :steps do |t|
      t.integer :redact, default: [], array: true

      t.timestamps
    end
  end
end

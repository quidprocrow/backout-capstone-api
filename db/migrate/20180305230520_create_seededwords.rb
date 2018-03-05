class CreateSeededwords < ActiveRecord::Migration[5.1]
  def change
    create_table :seededwords do |t|
      t.string :text
      t.boolean :clickable
      t.boolean :redacted

      t.timestamps
    end
  end
end

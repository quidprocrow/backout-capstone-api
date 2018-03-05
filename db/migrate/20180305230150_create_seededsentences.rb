class CreateSeededsentences < ActiveRecord::Migration[5.1]
  def change
    create_table :seededsentences do |t|
      t.boolean :active

      t.timestamps
    end
  end
end

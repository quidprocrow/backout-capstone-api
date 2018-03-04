class AddSentenceToWords < ActiveRecord::Migration[5.1]
  def change
    add_reference :words, :sentence, foreign_key: true
  end
end

class AddUserToSentences < ActiveRecord::Migration[5.1]
  def change
    add_reference :sentences, :user, foreign_key: true
  end
end

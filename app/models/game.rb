class Game < ApplicationRecord
  belongs_to :user

  def add_sentence(words)
    sentences_will_change!
    update_attributes sentences: sentences.push(words)
  end
end

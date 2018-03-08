class Word < ApplicationRecord
  has_one :step, :dependent => :destroy
  belongs_to :sentence
  belongs_to :user
end

# frozen_string_literal: true

class User < ApplicationRecord
  include Authentication
  has_many :examples
  has_many :games, :dependent => :destroy
  has_many :sentences, :dependent => :destroy
  has_many :words, :dependent => :destroy
  has_many :steps, :dependent => :destroy
end

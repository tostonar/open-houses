class Property < ApplicationRecord
  has_many :open_houses
  has_many :realtors, through: :open_houses
end

class Realtor < ApplicationRecord
  has_many :open_houses
  has_many :properties, through: :open_houses
end

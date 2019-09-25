class OpenHouse < ApplicationRecord
  belongs_to :realtor
  belongs_to :property
end

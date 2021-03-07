class OrderImage < ApplicationRecord
  belongs_to :image
  belongs_to :order
end

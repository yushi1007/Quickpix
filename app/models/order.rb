class Order < ApplicationRecord
    belongs_to :user
    has_many :order_images
    has_many :images, through: :order_images
end

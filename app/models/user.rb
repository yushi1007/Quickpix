class User < ApplicationRecord
    has_many :orders
    has_many :images
    has_many :order_images, through: :orders
    has_secure_password #validates: false
end

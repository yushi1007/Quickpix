class User < ApplicationRecord
    has_many :orders, dependent: :destroy 
    has_many :images, dependent: :destroy 
    has_many :order_images, through: :orders
    has_secure_password #validates: false

  
end

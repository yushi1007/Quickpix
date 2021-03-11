class User < ApplicationRecord
    has_many :orders, dependent: :destroy 
    has_many :images, dependent: :destroy 
    has_many :order_images, through: :orders
    has_secure_password #validates: false 
    validates :username, uniqueness: true, presence: true
    validates :name, presence: :true 
    validates :password, presence: :true 
end

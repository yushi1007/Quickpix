class Image < ApplicationRecord
    has_many :order_images, dependent: :destroy 
    has_many :orders, through: :order_images
    has_many :image_tags, dependent: :destroy 
    has_many :tags, through: :image_tags
    belongs_to :user
    validates :name, presence: true
    validates :url, presence: true
    validates :description, length: {minimum: 25}
    validates :price, format: { with: /\A\d+(?:\.\d{0,2})?\z/ }, numericality: { greater_than: 0, message: "can't be less than zero or blank"}
end

class Image < ApplicationRecord
    has_many :order_images
    has_many :orders, through: :order_images
    has_many :image_tags
    has_many :tags, through: :image_tags
    belongs_to :user
end

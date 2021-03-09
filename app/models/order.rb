class Order < ApplicationRecord
    belongs_to :user
    has_many :order_images, dependent: :destroy 
    has_many :images, through: :order_images

    after_initialize :init

    require 'securerandom'

    def init
        self.ordered = false if self.ordered.nil?
    end
end

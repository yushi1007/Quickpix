class ImageTag < ApplicationRecord
  belongs_to :tag
  belongs_to :image
end

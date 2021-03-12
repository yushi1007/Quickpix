class ImageTag < ApplicationRecord
  belongs_to :tag
  belongs_to :image, optional: :true 
  
end

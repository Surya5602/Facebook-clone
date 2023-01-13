class Post < ApplicationRecord
    include ImageUploader::Attachment(:image)
    has_one_attached :image
    belongs_to :user ,:optional => true
    
end

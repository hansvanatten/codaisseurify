class Photo < ApplicationRecord
  belongs_to :artist, optional: true

  mount_uploader :image, ImageUploader
end

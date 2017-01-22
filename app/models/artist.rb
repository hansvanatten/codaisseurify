class Artist < ApplicationRecord
  has_many :songs, dependent: :destroy

  validates :name, presence:    true,
                   uniqueness:  true,
                   length:      { maximum: 50 }

 validates :image, presence:    true,
                   uniqueness:  true

end

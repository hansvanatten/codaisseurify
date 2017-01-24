class Artist < ApplicationRecord
  has_many :songs, dependent: :destroy
  has_many :photos

  validates :name,    presence:    true,
                      uniqueness:  true,
                      length:      { maximum: 50 }
end

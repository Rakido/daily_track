class Track < ApplicationRecord
  belongs_to :user
  
  validates :artist, presence: true
  validates :title, presence: true
  validates :url, presence: true, uniqueness: true
end

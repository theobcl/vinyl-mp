class Vinyl < ApplicationRecord
  belongs_to :artist
  validates :name, presence: true, uniqueness: true
end

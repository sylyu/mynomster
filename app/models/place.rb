class Place < ActiveRecord::Base
  belongs_to :user
  geocoded_by :address
  after_validation :geocode
  validates :name, length: { minimum: 4 }, presence: true
  validates :address, presence: true
  validates :description, presence: true
end

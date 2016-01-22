class Category < ActiveRecord::Base
  has_many :image_categories #MTM ASSOCIATION
  has_many :images, through: :image_categories #MTM ASSOCIATION
  validates :name, presence: true, length: { minimum: 3, maximum: 24 }
  validates_uniqueness_of :name
end
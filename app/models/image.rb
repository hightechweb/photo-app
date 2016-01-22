class Image < ActiveRecord::Base
  belongs_to :user
  has_many :image_categories #MTM ASSOCIATION
  has_many :categories, through: :image_categories #MTM ASSOCIATION
  mount_uploader :picture, PictureUploader
  validate :picture_size
  validates :name, presence: true, length: { minimum: 3, maximum: 24 }
  validates :category_ids, presence: true
  validates :picture, presence: true

  private

  def picture_size
    if picture.size > 5.megabytes
      erros.add(:picture, "Should be not greater than 5MB")
    end
  end


end

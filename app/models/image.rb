class Image < ActiveRecord::Base
  belongs_to :user
  mount_uploader :picture, PictureUploader
  validate :picture_size

  private

  def picture_size
    if picture.size > 5.megabytes
      erros.add(:picture, "Should be than 5MB")
    end
  end

end

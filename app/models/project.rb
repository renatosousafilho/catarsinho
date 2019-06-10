class Project < ApplicationRecord
  belongs_to :user, required: true

  validates :description, length: { maximum: 300 }
  validates_numericality_of :target_value, :greater_than => 0, :less_than_or_equal_to => 500

  mount_uploader :picture, PictureUploader

  scope :active, -> { where(expired: false) }
end

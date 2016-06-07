class Course < ActiveRecord::Base
  belongs_to :user
  has_many :sections
  has_many :enrollments
  mount_uploader :image, ImageUploader

  validates :title, presence: true, length: { within: 5..40 }
  validates :description, presence: true, length: { within: 30..500 }
  validates :cost, presence: true, numericality: {greater_than_or_equal_to: 0}
end
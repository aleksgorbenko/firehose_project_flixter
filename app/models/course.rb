class Course < ActiveRecord::Base
  belongs_to :user
  has_many :sections

  validates :title, presence: true, length: { within: 5..40 }
  validates :description, presence: true, length: { within: 100..500 }
  validates :cost, presence: true, numericality: {greater_than_or_equal_to: 0}
end

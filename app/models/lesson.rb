class Lesson < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_one_attached :skill_picture
  validates :skill_name, presence: true

  def quick_description
    "#{description[0..15]}..."
  end
end

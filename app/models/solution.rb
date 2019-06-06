class Solution < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  belongs_to :user
  belongs_to :problem

  has_many :solution_votes, dependent: :destroy

  enum status: { pending: 0, selected: 1 }

  validates :title, :description, presence: true
end

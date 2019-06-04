class Solution < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  belongs_to :user
  belongs_to :problem

  has_many :solution_votes, dependent: :destroy

  validates :title, :description, presence: true
end

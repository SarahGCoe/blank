class Problem < ApplicationRecord
  CATEGORY = %w[Environment Food Lifestyle Education Social Tech]
  belongs_to :user
  has_many :solutions, dependent: :destroy

  has_many :problem_votes

  validates :title, :description, presence: true
  validates :title, uniqueness: true
  validates :category, inclusion: { in: CATEGORY }

  include PgSearch
  pg_search_scope :search_by_attr,
                  against: [:title, :description, :category],
                  using: {
                    tsearch: { prefix: true }
                  }
end

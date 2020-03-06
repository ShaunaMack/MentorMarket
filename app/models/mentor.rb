class Mentor < ApplicationRecord
  belongs_to :user

  has_one_attached :picture

  has_many :skills, dependent: :destroy

  has_many :beliefs, dependent: :destroy
  
  include PgSearch::Model 

  pg_search_scope :global_search,
    against: [:name, :bio ],
    associated_against: {
      skills: [:name],
      beliefs: [:name]
    },
    using: {
      tsearch: {any_word: true}
    }
end

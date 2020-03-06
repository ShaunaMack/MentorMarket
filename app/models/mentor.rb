class Mentor < ApplicationRecord
  belongs_to :user

  has_one_attached :picture

  has_many :skills, dependent: :destroy

  has_many :beliefs, dependent: :destroy
  
  include PgSearch::Model 

  # pg_search_scope :global_search,
  #   against: [:name, :bio ],
  #   associated_against: {
  #     skills: [:name],
  #     beliefs: [:name]
  #   },
  #   using: {
  #     tsearch: {any_word: true}
  #   }

  # def self.filter_by_skill(skill)
  #   mentors = []
  #   Mentor.all.each do | mentor |
  #     @results = Profile.where("lower(name) LIKE :search", search: "#{@skill}")
  #     if "LOWER(skill) = ?", skill
  #     mentors += mentor
  #   end
  #   return mentors
  # end

end

class Mentor < ApplicationRecord
  belongs_to :user

  has_one_attached :picture

  has_many :skills, dependent: :destroy

  has_many :beliefs, dependent: :destroy
  
end

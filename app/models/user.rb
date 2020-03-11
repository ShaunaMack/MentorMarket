# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable

  has_many :authored_conversations, class_name: 'Conversation', foreign_key: 'author_id'
  has_many :received_conversations, class_name: 'Conversation', foreign_key: 'received_id'

  has_many :personal_messages, dependent: :destroy

  has_one :profile, dependent: :destroy

  has_one :mentor, dependent: :destroy

  has_many :mentorships
  has_many :mentor_users, through: :mentorships

  has_many :menteeships, class_name: 'Mentorship', foreign_key: 'mentor_user_id'
  has_many :mentee_users, through: :menteeships, source: :user

  def username
    email.split('@')[0]
  end

  def get_name
    profile ? profile.name : username
  end
  
  def get_profile_field(field)
    profile ? profile[field] : ''
  end
end

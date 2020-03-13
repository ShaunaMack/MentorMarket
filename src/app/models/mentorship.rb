# frozen_string_literal: true

class Mentorship < ApplicationRecord
  belongs_to :mentor_user, class_name: 'User'
  belongs_to :user
end

# frozen_string_literal: true

json.extract! mentor, :id, :user_id, :bio, :accept_mentee, :linkedIn, :website, :created_at, :updated_at
json.url mentor_url(mentor, format: :json)

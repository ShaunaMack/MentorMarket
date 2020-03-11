# frozen_string_literal: true

ActiveAdmin.register Mentor do
  permit_params :bio, :accept_mentee, :user_id
end

# frozen_string_literal: true

class CreateMentorships < ActiveRecord::Migration[6.0]
  def change
    create_table :mentorships do |t|
      t.timestamps
      t.references :user, null: false, foreign_key: true
    end

    add_reference(:mentorships, :mentor_user, foreign_key: { to_table: :users })
  end
end

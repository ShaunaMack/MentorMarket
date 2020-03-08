# frozen_string_literal: true

class CreateMentors < ActiveRecord::Migration[6.0]
  def change
    create_table :mentors do |t|
      t.references :user, null: false, foreign_key: true
      t.text :bio, null: false
      t.boolean :accept_mentee, null: false
      t.string :linkedIn
      t.string :website

      t.timestamps
    end
  end
end

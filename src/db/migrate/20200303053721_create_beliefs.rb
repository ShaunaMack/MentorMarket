# frozen_string_literal: true

class CreateBeliefs < ActiveRecord::Migration[6.0]
  def change
    create_table :beliefs do |t|
      t.string :name
      t.references :mentor, null: false, foreign_key: true

      t.timestamps
    end
  end
end

class AddAcceptedToMentorships < ActiveRecord::Migration[6.0]
  def change
    add_column :mentorships, :accepted, :boolean
  end
end

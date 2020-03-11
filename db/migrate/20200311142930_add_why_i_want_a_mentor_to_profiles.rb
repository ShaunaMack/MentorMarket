class AddWhyIWantAMentorToProfiles < ActiveRecord::Migration[6.0]
  def change
    add_column :profiles, :why_i_want_a_mentor, :text
  end
end


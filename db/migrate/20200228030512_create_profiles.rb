class CreateProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :profiles do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name, null: false
      t.string :job_title, null: false
      t.string :employer
      t.string :city
      t.string :state

      t.timestamps
    end
  end
end

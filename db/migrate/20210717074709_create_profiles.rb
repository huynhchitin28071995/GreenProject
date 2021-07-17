class CreateProfiles < ActiveRecord::Migration[6.1]
  def change
    create_table :profiles do |t|
      t.references :user
      t.integer :sex, default: 0
      t.string :address
      t.string :phone
      t.string :first_name
      t.string :last_name
      t.date :dob

      t.timestamps
    end
  end
end

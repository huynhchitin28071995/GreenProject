class CreateSlides < ActiveRecord::Migration[6.1]
  def change
    create_table :slides do |t|
      t.text :description

      t.timestamps
    end
  end
end

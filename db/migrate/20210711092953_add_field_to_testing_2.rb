class AddFieldToTesting2 < ActiveRecord::Migration[6.1]
  def change
    add_column :testing_2s, :name, :string
    add_column :testing_2s, :number, :integer
    add_column :testing_2s, :description, :text
  end
end

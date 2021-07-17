class AddFieldToTesting < ActiveRecord::Migration[6.1]
  def change
    add_column :testings, :name, :string
    add_column :testings, :description, :text
    add_column :testings, :number, :integer
  end
end

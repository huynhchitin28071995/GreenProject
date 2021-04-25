class AddPackageToProduct < ActiveRecord::Migration[6.1]
  def change
    add_column :products, :pakage, :string
  end
end

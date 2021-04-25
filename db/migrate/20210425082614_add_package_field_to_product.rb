class AddPackageFieldToProduct < ActiveRecord::Migration[6.1]
  def change
    add_column :products, :package, :string
  end
end

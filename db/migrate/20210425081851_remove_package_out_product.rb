class RemovePackageOutProduct < ActiveRecord::Migration[6.1]
  def change
      remove_column :products, :package
  end
end

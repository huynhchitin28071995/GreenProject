class CreateProductTranslation < ActiveRecord::Migration[6.1]
  def change
    reversible do |dir|
      dir.up do
        Product.create_translation_table!(
          { description: :text }, { migrate_data: true }
        )
      end

      dir.down do
        Product.drop_translation_table migrate_data: true
      end
    end
  end
end

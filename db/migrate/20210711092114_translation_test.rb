class TranslationTest < ActiveRecord::Migration[6.1]
  def change
    reversible do |dir|
      dir.up do
        Testing.create_translation_table!(
        
        {
          :description => :text
        },

        {
          :migrate_data => true
        }

        )
      end

      dir.down do
        Testing.drop_translation_table! :migrate_data => true
      end
    end
  end
end


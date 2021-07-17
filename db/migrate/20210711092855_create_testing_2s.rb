class CreateTesting2s < ActiveRecord::Migration[6.1]
  def change
    create_table :testing_2s do |t|

      t.timestamps
    end
  end
end

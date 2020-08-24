class CreatePlants < ActiveRecord::Migration[6.0]
  def change
    create_table :plants do |t|
      t.string :name
      t.string :water
      t.string :light
      t.string :soil
      t.string :fertilizer
      t.string :repotting

      t.timestamps
    end
  end
end

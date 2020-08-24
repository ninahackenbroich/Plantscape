class CreateJungleplants < ActiveRecord::Migration[6.0]
  def change
    create_table :jungleplants do |t|
      t.text :comments
      t.string :status
      t.references :jungle, null: false, foreign_key: true
      t.references :plant, null: false, foreign_key: true
      t.timestamps
    end
  end
end

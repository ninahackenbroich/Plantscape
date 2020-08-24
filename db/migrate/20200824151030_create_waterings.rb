class CreateWaterings < ActiveRecord::Migration[6.0]
  def change
    create_table :waterings do |t|
      t.date :date
      t.references :booking, null: false, foreign_key: true

      t.timestamps
    end
  end
end
